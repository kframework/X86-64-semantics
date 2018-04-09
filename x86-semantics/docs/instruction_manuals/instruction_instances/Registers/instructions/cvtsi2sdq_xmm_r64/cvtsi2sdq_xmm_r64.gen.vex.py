import angr
proj = angr.Project('./instructions/cvtsi2sdq_xmm_r64/cvtsi2sdq_xmm_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()