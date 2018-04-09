import angr
proj = angr.Project('./instructions/vfmsubadd213pd_ymm_ymm_ymm/vfmsubadd213pd_ymm_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()