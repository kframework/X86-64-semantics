import angr
proj = angr.Project('./instructions/vmovapd_ymm_ymm/vmovapd_ymm_ymm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()