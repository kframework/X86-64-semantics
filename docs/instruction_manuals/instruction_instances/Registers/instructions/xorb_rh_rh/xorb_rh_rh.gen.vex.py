import angr
proj = angr.Project('./instructions/xorb_rh_rh/xorb_rh_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()