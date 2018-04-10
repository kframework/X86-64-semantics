import angr
proj = angr.Project('./instructions/xorb_r8_r8/xorb_r8_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()