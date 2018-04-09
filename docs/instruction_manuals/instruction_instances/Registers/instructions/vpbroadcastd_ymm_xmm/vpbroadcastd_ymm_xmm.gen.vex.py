import angr
proj = angr.Project('./instructions/vpbroadcastd_ymm_xmm/vpbroadcastd_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()