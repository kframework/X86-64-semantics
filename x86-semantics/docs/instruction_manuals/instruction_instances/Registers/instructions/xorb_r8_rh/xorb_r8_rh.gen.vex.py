import angr
proj = angr.Project('./instructions/xorb_r8_rh/xorb_r8_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()