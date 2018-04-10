import angr
proj = angr.Project('./instructions/addw_r16_r16/addw_r16_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()