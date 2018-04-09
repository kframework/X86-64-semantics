import angr
proj = angr.Project('./instructions/idivq_r64/idivq_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()