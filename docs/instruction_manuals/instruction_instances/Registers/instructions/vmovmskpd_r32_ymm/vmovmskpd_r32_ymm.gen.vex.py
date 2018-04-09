import angr
proj = angr.Project('./instructions/vmovmskpd_r32_ymm/vmovmskpd_r32_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()