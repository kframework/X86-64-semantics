import angr
proj = angr.Project('./instructions/vpmovsxdq_ymm_xmm/vpmovsxdq_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()