import angr
proj = angr.Project('./instructions/divl_r32/divl_r32.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()