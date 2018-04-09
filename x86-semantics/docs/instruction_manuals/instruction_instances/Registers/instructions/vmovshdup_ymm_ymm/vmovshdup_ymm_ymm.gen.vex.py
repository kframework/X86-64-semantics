import angr
proj = angr.Project('./instructions/vmovshdup_ymm_ymm/vmovshdup_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()