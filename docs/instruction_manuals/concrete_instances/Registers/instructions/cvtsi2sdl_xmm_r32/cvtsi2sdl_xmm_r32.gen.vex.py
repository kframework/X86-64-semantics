import angr
proj = angr.Project('./instructions/cvtsi2sdl_xmm_r32/cvtsi2sdl_xmm_r32.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()