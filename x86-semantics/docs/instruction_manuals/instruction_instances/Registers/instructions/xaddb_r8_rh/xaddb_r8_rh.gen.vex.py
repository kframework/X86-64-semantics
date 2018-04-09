import angr
proj = angr.Project('./instructions/xaddb_r8_rh/xaddb_r8_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()