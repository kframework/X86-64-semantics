import angr
proj = angr.Project('./instructions/vfmsubadd213ps_xmm_xmm_xmm/vfmsubadd213ps_xmm_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()