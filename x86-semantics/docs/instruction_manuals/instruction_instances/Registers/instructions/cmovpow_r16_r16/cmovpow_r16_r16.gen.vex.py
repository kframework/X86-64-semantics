import angr
proj = angr.Project('./instructions/cmovpow_r16_r16/cmovpow_r16_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()