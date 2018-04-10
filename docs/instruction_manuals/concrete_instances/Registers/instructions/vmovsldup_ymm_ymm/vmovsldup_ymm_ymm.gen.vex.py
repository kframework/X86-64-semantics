import angr
proj = angr.Project('./instructions/vmovsldup_ymm_ymm/vmovsldup_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()