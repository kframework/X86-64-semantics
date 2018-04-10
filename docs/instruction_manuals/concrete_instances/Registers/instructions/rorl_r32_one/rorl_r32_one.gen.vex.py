import angr
proj = angr.Project('./instructions/rorl_r32_one/rorl_r32_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()