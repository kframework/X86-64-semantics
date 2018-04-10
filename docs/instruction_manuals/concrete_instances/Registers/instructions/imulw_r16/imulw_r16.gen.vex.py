import angr
proj = angr.Project('./instructions/imulw_r16/imulw_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()