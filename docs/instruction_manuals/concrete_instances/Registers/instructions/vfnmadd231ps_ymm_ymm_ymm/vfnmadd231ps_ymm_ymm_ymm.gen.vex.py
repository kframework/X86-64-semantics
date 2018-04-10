import angr
proj = angr.Project('./instructions/vfnmadd231ps_ymm_ymm_ymm/vfnmadd231ps_ymm_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()