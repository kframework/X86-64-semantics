import angr
proj = angr.Project('./instructions/andb_r8_rh/andb_r8_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()