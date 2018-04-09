import angr
proj = angr.Project('./instructions/subb_r8_rh/subb_r8_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()