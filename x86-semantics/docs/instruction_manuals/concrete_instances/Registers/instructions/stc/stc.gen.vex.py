import angr
proj = angr.Project('./instructions/stc/stc.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()