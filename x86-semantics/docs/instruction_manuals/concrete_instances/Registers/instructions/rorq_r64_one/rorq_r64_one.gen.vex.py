import angr
proj = angr.Project('./instructions/rorq_r64_one/rorq_r64_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()