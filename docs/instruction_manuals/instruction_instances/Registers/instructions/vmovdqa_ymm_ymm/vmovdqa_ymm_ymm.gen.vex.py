import angr
proj = angr.Project('./instructions/vmovdqa_ymm_ymm/vmovdqa_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()