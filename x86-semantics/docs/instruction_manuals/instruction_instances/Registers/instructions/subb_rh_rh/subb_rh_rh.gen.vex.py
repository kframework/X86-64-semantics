import angr
proj = angr.Project('./instructions/subb_rh_rh/subb_rh_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()