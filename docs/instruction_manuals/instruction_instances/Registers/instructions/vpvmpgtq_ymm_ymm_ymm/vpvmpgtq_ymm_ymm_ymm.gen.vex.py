import angr
proj = angr.Project('./instructions/vpvmpgtq_ymm_ymm_ymm/vpvmpgtq_ymm_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()