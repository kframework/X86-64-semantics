import angr
proj = angr.Project('./instructions/pxor_xmm_xmm/pxor_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()