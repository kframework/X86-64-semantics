import angr
proj = angr.Project('./instructions/sarl_r32_one/sarl_r32_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()