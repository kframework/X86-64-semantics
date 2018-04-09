import angr
proj = angr.Project('./instructions/vmovupd_ymm_ymm/vmovupd_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()