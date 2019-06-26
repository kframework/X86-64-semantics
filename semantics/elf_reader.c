#define _GNU_SOURCE
#include <elf.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>

void * read_stdin() {
    const size_t INITIAL_SIZE = 1024;
    void * result = mmap(NULL, INITIAL_SIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    size_t so_far = 0;
    size_t size = INITIAL_SIZE;
    while (!feof(stdin)) {
        so_far += fread((char*)result + so_far, 1, size-so_far, stdin);
        if (ferror(stdin)) {
            fprintf(stderr, "Error occurred while reading");
            exit(EXIT_FAILURE);
        } else if (!feof(stdin) && so_far == size) {
            const size_t new_size = 2 * size;
            result = mremap(result, size, new_size, MREMAP_MAYMOVE);
            size = new_size;
        }
    }
    return result;
}

void * read_file(const char * name) {
    int fd = open(name, O_RDONLY);
    if (fd < 0) {
        fprintf(stderr, "Failed to open file %s with error: %s\n", name, strerror(errno));
        exit(EXIT_FAILURE);
    }
    struct stat file_stats;
    if (fstat(fd, &file_stats) < 0) {
        fprintf(stderr, "Failed to stat file %s with error: %s\n", name, strerror(errno));
        exit(EXIT_FAILURE);
    }

    void * result = mmap(NULL, file_stats.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
    if (result == (void*)-1) {
        fprintf(stderr, "Failed to mmap file %s with error: %s\n", name, strerror(errno));
        exit(EXIT_FAILURE);
    }

    close(fd);
    return result;
}

const Elf64_Ehdr * read_elf_header(const char * name, const void * data) {
    const Elf64_Ehdr * elf_header = (const Elf64_Ehdr*)data;
    if (elf_header->e_ident[EI_MAG0] != ELFMAG0 ||
        elf_header->e_ident[EI_MAG1] != ELFMAG1 ||
        elf_header->e_ident[EI_MAG2] != ELFMAG2 ||
        elf_header->e_ident[EI_MAG3] != ELFMAG3) {
        fprintf(stderr, "File %s does not appear to be an ELF file\n", name);
        exit(EXIT_FAILURE);
    }

    if (elf_header->e_ident[EI_DATA] != ELFDATA2LSB) {
        fprintf(stderr, "This program currently only supports LSB ELF files"); // I believe all x86_64 ELF files are LSB but might be wrong about that.
        exit(EXIT_FAILURE);
    }

    if (elf_header->e_ident[EI_CLASS] != ELFCLASS64) {
        fprintf(stderr, "This program only supports 64-bit ELF files\n");
        exit(EXIT_FAILURE);
    }

    if (elf_header->e_type != ET_EXEC) {
        fprintf(stderr, "Warning - Unsupported use-case: file %s is not an executable\n", name);
    }

    if (!(elf_header->e_type & EM_X86_64)) {
        if (elf_header->e_type != EM_NONE) {
            fprintf(stderr, "Warning: This executable's machine type is not known.\n");
        } else {
            fprintf(stderr, "This executable is not x86_64, exiting.\n");
            exit(EXIT_FAILURE);
        }
    }

    return elf_header;
}

size_t read_num_program_headers(const Elf64_Ehdr * header, const void * input) {
    if (!header->e_phoff) {
        return 0;
    }
    if (header->e_phnum < PN_XNUM) {
        return header->e_phnum;
    } else {
        return ((const Elf64_Shdr*)((const char *)input + header->e_shoff))->sh_info;
    }
}

void read_program_header(const Elf64_Ehdr * file_header, const void * input) {
    const size_t num_headers = read_num_program_headers(file_header, input);

    for (size_t i = 0; i < num_headers; ++i) {
        const Elf64_Phdr * program_header = 
            (const Elf64_Phdr*)((const char*)input + file_header->e_phoff + i * file_header->e_phentsize);
        switch (program_header->p_type) {
            case PT_INTERP:
            case PT_DYNAMIC:
                fprintf(stderr, "Found dynamic linking information, this file only supports statically linked executables\n");
                exit(EXIT_FAILURE);
                break;
            case PT_LOAD:
                printf("Load(0x%lx, 0x", (size_t)program_header->p_vaddr);
                const char * base = (const char*)input + program_header->p_offset;
                for (size_t i = 0; i < program_header->p_memsz; ++i) {
                    printf("%02x", i < program_header->p_filesz ? (unsigned int)(base[i]) & 0xFF : 0);
                }
                printf(", 0x%lx);\n", program_header->p_memsz);
                break;
            default:
                break;
        }
    }
}

size_t read_num_sections(const Elf64_Ehdr * header, const void * input) {
    if (!header->e_shoff) {
        return 0;
    }

    if (header->e_shnum) {
        return header->e_shnum;
    } else {
        return ((const Elf64_Shdr *)(((const char *)input) + header->e_shoff))->sh_size;
    }
}

const size_t NAME_NOT_FOUND = (size_t)(-1);

const char * MAIN_SYMBOL_NAME = "main";
// Based on code from https://wiki.osdev.org/ELF_Tutorial#Accessing_Section_Headers - since the man page doesn't document sh_link at all.
size_t find_main_in_symbol_table(const Elf64_Ehdr * elf_header, const Elf64_Shdr* section_header, const void * input, const char * query) {
    const Elf64_Shdr * string_table = (const Elf64_Shdr*)(((const char *)input) + elf_header->e_shoff + section_header->sh_link * elf_header->e_shentsize);
    const size_t num_symbols = section_header->sh_size / section_header->sh_entsize;
    for (size_t i = 0; i < num_symbols; ++i) {
        const Elf64_Sym * symbol = (const Elf64_Sym *)(((const char *)input) + section_header->sh_offset + i * section_header->sh_entsize);
        const char * name = ((const char *)input) + string_table->sh_offset + symbol->st_name;
        if (!strcmp(name, query)) {
            return symbol->st_value;
        }
    }
    return NAME_NOT_FOUND;
}

// We can't use the main program entry point yet, as the glibc initialization code will not work until we have implementations of several syscalls
// (Including uname, settimeofday, among others) & an implementation of cpuid.
size_t find_symbol(const Elf64_Ehdr * elf_header, const void * input, const char * query) { 
    const size_t num_sections = read_num_sections(elf_header, input);
    for (size_t i = 0; i < num_sections; ++i) {
        const Elf64_Shdr * section_header = 
            (const Elf64_Shdr*)((const char*)input + elf_header->e_shoff + i * elf_header->e_shentsize);
        switch (section_header->sh_type) {
            case SHT_SYMTAB:
            case SHT_DYNSYM:
                {
                    const size_t result = find_main_in_symbol_table(elf_header, section_header, input, query);
                    if (result != NAME_NOT_FOUND) {
                        return result;
                    }
                }
            default:
                break;
        }
    }
    return NAME_NOT_FOUND;
}

int main(const int argc, const char ** argv) {
    const void * input = NULL;
    const char * name = NULL;
    
    if (argc < 2) {
        fprintf(stderr, "Usage: ./elf_reader (elf_file/-) name1 name2 name3...  \n"); // Main is always added to this list.
        exit(EXIT_FAILURE);
    }
    
    if(!strcmp(argv[1], "-")) {
        name = "stdin";
        input = read_stdin();
    } else {
        name = argv[1];
        input = read_file(name);
    }

    const Elf64_Ehdr * elf_header = read_elf_header(name, input);
    printf("Entry(0x%lx);\n", find_symbol(elf_header, input, MAIN_SYMBOL_NAME));

    for (int i = 2; i < argc; ++i) {
        const char * symbol_name = argv[i];
        const size_t value = find_symbol(elf_header, input, symbol_name);
        if (value == NAME_NOT_FOUND) {
            printf("NamedSymbol(%s, NotPresentInFile);\n", symbol_name);
        } else {
            printf("NamedSymbol(%s, 0x%lx);\n", symbol_name, value);
        }
    }

    read_program_header(elf_header, input);

    return 0;
}
