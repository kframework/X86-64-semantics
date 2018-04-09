import angr
proj = angr.Project('./instructions/cmovlq_r64_r64/cmovlq_r64_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()