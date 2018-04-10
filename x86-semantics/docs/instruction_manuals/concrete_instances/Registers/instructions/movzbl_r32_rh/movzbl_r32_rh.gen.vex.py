import angr
proj = angr.Project('./instructions/movzbl_r32_rh/movzbl_r32_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()