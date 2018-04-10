import angr
proj = angr.Project('./instructions/vpsrlw_ymm_ymm_xmm/vpsrlw_ymm_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()