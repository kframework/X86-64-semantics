import angr
proj = angr.Project('./instructions/vpmovsxwd_ymm_xmm/vpmovsxwd_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()