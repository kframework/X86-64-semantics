import angr
proj = angr.Project('./instructions/vpand_ymm_ymm_ymm/vpand_ymm_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()