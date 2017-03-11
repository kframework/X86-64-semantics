#include <idc.idc>
static main() {
auto addr, end, args, locals, frame, firstArg, name, ret;
addr = 0;
for (addr = NextFunction(addr); addr != BADADDR; addr = NextFunction(addr)) {
name = Name(addr);
end = GetFunctionAttr(addr, FUNCATTR_END);
locals = GetFunctionAttr(addr, FUNCATTR_FRSIZE);
frame = GetFrame(addr);
// retrieve a handle to the function¿s stack frame
ret = GetMemberOffset(frame, " r"); // " r" is the name of the return address
if (ret == -1) continue;
firstArg = ret + 4;
args = GetStrucSize(frame) - firstArg;
Message("Function: %s, starts at %x, ends at %x\n", name, addr, end);
Message(" Local variable area is %d bytes\n", locals);
Message(" Arguments occupy %d bytes (%d args)\n", args, args / 4);
}
}

