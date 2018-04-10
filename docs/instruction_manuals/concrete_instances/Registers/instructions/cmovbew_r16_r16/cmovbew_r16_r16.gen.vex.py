import angr
proj = angr.Project('./instructions/cmovbew_r16_r16/cmovbew_r16_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()