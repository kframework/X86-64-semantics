import angr
proj = angr.Project('./instructions/movzwq_r64_r16/movzwq_r64_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()