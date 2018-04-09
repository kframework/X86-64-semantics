import angr
proj = angr.Project('./instructions/btrq_r64_r64/btrq_r64_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()