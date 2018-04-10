import angr
proj = angr.Project('./instructions/negq_r64/negq_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()