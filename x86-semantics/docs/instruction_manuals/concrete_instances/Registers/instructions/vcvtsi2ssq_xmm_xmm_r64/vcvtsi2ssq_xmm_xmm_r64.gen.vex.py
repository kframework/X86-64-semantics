import angr
proj = angr.Project('./instructions/vcvtsi2ssq_xmm_xmm_r64/vcvtsi2ssq_xmm_xmm_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()