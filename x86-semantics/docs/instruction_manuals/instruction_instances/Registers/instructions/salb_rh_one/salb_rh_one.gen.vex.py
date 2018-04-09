import angr
proj = angr.Project('./instructions/salb_rh_one/salb_rh_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()