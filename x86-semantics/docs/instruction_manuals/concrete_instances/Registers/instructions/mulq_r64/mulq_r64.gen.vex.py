import angr
proj = angr.Project('./instructions/mulq_r64/mulq_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()