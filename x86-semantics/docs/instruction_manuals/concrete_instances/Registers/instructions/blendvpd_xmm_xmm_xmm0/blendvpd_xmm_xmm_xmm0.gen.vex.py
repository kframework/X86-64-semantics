import angr
proj = angr.Project('./instructions/blendvpd_xmm_xmm_xmm0/blendvpd_xmm_xmm_xmm0.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()