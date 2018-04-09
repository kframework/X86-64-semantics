import angr
proj = angr.Project('./instructions/divq_r64/divq_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()