import angr
proj = angr.Project('./instructions/vpmovsxbd_ymm_xmm/vpmovsxbd_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()