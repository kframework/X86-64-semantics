import angr
proj = angr.Project('./instructions/salw_r16_one/salw_r16_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()