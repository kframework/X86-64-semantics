import angr
proj = angr.Project('./instructions/cmovnaw_r16_r16/cmovnaw_r16_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()