import angr
proj = angr.Project('./instructions/vpsubsw_ymm_ymm_ymm/vpsubsw_ymm_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()