import angr
proj = angr.Project('./instructions/vpbroadcastq_xmm_xmm/vpbroadcastq_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()