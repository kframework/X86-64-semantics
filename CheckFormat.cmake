# format checking
# (based on polly's format checking)
# Build list of all clang-format'able files
file(GLOB_RECURSE files include/*.h tools/*.h tools/*.c tools/*.cpp libs/*.h libs/*.c libs/*.cpp)

# But skip files that we didn't write ourselves
#file(GLOB_RECURSE archive_files libs/archive-rw/*.c libs/archive-rw/*.h)
#file(GLOB_RECURSE musl_files libs/none/musl-*/*)
#list(REMOVE_ITEM files ${archive_files} ${build_tree} ${musl_files})

# Command use to format a file
set(CLANGFORMAT_COMMAND clang-format -sort-includes -style=llvm)

# cmake for loop, let's do this
set(i 0)
foreach(file IN LISTS files)
  add_custom_command(OUTPUT allin-check-format${i}
    COMMAND ${CLANGFORMAT_COMMAND} ${file} | diff -u ${file} -
    VERBATIM
    COMMENT "Checking format of ${file}..."
  )
  list(APPEND check_format_depends "allin-check-format${i}")

  add_custom_command(OUTPUT allin-update-format${i}
    COMMAND ${CLANGFORMAT_COMMAND} -i ${file}
    VERBATIM
    COMMENT "Updating format of ${file}..."
  )
  list(APPEND update_format_depends "allin-update-format${i}")

  math(EXPR i ${i}+1)
endforeach()

add_custom_target(check-format DEPENDS ${check_format_depends})
set_target_properties(check-format PROPERTIES FOLDER "ALLIN")

add_custom_target(update-format DEPENDS ${update_format_depends})
set_target_properties(update-format PROPERTIES FOLDER "ALLIN")

