import angr
proj = angr.Project('./instructions/shrb_r8_one/shrb_r8_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()