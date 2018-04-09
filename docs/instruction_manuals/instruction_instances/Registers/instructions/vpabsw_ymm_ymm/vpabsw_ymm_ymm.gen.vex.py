import angr
proj = angr.Project('./instructions/vpabsw_ymm_ymm/vpabsw_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()