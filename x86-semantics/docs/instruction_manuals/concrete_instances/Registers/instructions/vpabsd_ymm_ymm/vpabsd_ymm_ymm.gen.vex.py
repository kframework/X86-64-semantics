import angr
proj = angr.Project('./instructions/vpabsd_ymm_ymm/vpabsd_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()