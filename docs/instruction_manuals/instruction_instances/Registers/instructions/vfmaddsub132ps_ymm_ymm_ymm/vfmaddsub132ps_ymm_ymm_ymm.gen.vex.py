import angr
proj = angr.Project('./instructions/vfmaddsub132ps_ymm_ymm_ymm/vfmaddsub132ps_ymm_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()