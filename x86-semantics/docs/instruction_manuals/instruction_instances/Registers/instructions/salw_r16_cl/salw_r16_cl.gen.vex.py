import angr
proj = angr.Project('./instructions/salw_r16_cl/salw_r16_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()