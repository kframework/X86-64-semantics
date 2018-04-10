import angr
proj = angr.Project('./instructions/xaddb_rh_rh/xaddb_rh_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()