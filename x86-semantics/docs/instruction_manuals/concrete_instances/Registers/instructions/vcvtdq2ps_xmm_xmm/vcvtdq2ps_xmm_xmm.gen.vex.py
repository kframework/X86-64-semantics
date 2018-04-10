import angr
proj = angr.Project('./instructions/vcvtdq2ps_xmm_xmm/vcvtdq2ps_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()