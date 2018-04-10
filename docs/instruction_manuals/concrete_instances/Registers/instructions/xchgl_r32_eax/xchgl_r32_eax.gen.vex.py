import angr
proj = angr.Project('./instructions/xchgl_r32_eax/xchgl_r32_eax.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()