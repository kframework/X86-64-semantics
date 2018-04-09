import angr
proj = angr.Project('./instructions/cmovnleq_r64_r64/cmovnleq_r64_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()