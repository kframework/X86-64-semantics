import angr
proj = angr.Project('./instructions/divw_r16/divw_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()