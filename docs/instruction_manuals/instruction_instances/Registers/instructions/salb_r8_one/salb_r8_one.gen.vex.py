import angr
proj = angr.Project('./instructions/salb_r8_one/salb_r8_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()