import angr
proj = angr.Project('./instructions/vphaddw_ymm_ymm_ymm/vphaddw_ymm_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()