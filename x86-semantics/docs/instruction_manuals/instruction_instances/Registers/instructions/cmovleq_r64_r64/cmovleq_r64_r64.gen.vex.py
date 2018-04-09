import angr
proj = angr.Project('./instructions/cmovleq_r64_r64/cmovleq_r64_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()