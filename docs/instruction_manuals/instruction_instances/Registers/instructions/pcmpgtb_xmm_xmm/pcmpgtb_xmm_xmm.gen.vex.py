import angr
proj = angr.Project('./instructions/pcmpgtb_xmm_xmm/pcmpgtb_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()