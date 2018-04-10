import angr
proj = angr.Project('./instructions/vpsubq_xmm_xmm_xmm/vpsubq_xmm_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()