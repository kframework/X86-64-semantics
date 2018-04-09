import angr
proj = angr.Project('./instructions/notl_r32/notl_r32.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()