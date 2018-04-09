import angr
proj = angr.Project('./instructions/orb_r8_r8/orb_r8_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()