import angr
proj = angr.Project('./instructions/setnbe_r8/setnbe_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()