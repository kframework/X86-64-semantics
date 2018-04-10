import angr
proj = angr.Project('./instructions/movzbl_r32_r8/movzbl_r32_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()