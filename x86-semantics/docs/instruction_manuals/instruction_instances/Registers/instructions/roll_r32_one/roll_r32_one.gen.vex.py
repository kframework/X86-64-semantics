import angr
proj = angr.Project('./instructions/roll_r32_one/roll_r32_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()