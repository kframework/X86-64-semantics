import angr
proj = angr.Project('./instructions/movsbl_r32_r8/movsbl_r32_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()