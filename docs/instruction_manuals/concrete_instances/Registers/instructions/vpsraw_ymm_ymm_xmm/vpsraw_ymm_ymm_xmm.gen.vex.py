import angr
proj = angr.Project('./instructions/vpsraw_ymm_ymm_xmm/vpsraw_ymm_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()