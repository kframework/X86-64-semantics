import angr
proj = angr.Project('./instructions/adcb_r8_rh/adcb_r8_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()