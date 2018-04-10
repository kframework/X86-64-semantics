import angr
proj = angr.Project('./instructions/rcrq_r64_one/rcrq_r64_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()