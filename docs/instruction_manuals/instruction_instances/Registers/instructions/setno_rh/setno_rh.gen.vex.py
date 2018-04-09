import angr
proj = angr.Project('./instructions/setno_rh/setno_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()