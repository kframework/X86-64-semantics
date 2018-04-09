import angr
proj = angr.Project('./instructions/movmskps_r64_xmm/movmskps_r64_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()