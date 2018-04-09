import angr
proj = angr.Project('./instructions/setne_rh/setne_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()