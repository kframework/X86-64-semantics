import angr
proj = angr.Project('./instructions/cbtw/cbtw.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()