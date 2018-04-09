import angr
proj = angr.Project('./instructions/roll_r32_cl/roll_r32_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()