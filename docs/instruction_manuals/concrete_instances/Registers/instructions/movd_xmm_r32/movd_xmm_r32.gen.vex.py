import angr
proj = angr.Project('./instructions/movd_xmm_r32/movd_xmm_r32.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()