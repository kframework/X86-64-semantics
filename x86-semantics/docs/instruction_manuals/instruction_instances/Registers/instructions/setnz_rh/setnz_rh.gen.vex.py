import angr
proj = angr.Project('./instructions/setnz_rh/setnz_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()