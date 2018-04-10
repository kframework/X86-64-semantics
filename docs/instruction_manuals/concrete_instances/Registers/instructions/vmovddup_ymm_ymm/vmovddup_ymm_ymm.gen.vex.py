import angr
proj = angr.Project('./instructions/vmovddup_ymm_ymm/vmovddup_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()