import angr
proj = angr.Project('./instructions/movzbw_r16_rh/movzbw_r16_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()