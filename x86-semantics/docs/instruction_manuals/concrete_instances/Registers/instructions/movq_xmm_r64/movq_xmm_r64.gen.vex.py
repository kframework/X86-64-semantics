import angr
proj = angr.Project('./instructions/movq_xmm_r64/movq_xmm_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()