import angr
proj = angr.Project('./instructions/mull_r32/mull_r32.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()