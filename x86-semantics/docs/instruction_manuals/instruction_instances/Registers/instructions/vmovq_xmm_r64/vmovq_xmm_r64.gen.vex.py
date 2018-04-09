import angr
proj = angr.Project('./instructions/vmovq_xmm_r64/vmovq_xmm_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()