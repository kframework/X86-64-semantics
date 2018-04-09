import angr
proj = angr.Project('./instructions/vpmovsxwq_xmm_xmm/vpmovsxwq_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()