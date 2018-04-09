import angr
proj = angr.Project('./instructions/vmovmskps_r64_ymm/vmovmskps_r64_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()