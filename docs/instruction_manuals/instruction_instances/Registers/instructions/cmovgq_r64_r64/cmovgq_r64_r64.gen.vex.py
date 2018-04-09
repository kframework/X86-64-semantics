import angr
proj = angr.Project('./instructions/cmovgq_r64_r64/cmovgq_r64_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()