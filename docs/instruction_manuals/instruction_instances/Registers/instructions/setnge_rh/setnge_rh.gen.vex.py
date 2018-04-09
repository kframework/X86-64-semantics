import angr
proj = angr.Project('./instructions/setnge_rh/setnge_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()