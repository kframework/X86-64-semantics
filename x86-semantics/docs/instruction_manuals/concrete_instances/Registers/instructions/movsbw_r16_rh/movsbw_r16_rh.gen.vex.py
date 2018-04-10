import angr
proj = angr.Project('./instructions/movsbw_r16_rh/movsbw_r16_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()