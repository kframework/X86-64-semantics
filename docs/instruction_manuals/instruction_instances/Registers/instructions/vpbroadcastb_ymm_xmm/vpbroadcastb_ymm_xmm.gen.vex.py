import angr
proj = angr.Project('./instructions/vpbroadcastb_ymm_xmm/vpbroadcastb_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()