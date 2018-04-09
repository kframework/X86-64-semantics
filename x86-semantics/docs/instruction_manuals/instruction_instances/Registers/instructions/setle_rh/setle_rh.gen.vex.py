import angr
proj = angr.Project('./instructions/setle_rh/setle_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()