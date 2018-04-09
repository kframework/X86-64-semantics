import angr
proj = angr.Project('./instructions/vmovmskps_r64_xmm/vmovmskps_r64_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()