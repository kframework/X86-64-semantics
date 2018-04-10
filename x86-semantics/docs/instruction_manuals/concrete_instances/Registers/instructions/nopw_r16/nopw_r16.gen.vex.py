import angr
proj = angr.Project('./instructions/nopw_r16/nopw_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()