import angr
proj = angr.Project('./instructions/vsubsd_xmm_xmm_xmm/vsubsd_xmm_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()