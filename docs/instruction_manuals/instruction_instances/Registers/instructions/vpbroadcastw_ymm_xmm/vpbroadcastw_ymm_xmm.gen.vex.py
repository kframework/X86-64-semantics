import angr
proj = angr.Project('./instructions/vpbroadcastw_ymm_xmm/vpbroadcastw_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()