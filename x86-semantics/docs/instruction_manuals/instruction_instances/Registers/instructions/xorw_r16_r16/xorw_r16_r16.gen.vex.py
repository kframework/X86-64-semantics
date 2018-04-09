import angr
proj = angr.Project('./instructions/xorw_r16_r16/xorw_r16_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()