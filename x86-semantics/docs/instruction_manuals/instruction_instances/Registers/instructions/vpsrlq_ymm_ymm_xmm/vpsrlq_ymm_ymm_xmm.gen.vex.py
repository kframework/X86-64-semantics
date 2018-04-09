import angr
proj = angr.Project('./instructions/vpsrlq_ymm_ymm_xmm/vpsrlq_ymm_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()