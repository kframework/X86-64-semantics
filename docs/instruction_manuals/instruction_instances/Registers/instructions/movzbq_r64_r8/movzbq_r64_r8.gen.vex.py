import angr
proj = angr.Project('./instructions/movzbq_r64_r8/movzbq_r64_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()