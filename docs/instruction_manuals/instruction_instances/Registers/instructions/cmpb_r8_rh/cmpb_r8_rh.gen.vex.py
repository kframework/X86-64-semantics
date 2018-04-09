import angr
proj = angr.Project('./instructions/cmpb_r8_rh/cmpb_r8_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()