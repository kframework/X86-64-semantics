import angr
proj = angr.Project('./instructions/rcrw_r16_cl/rcrw_r16_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()