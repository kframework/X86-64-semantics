import angr
proj = angr.Project('./instructions/andnps_xmm_xmm/andnps_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()