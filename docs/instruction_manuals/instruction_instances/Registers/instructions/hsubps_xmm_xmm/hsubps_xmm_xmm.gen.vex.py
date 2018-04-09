import angr
proj = angr.Project('./instructions/hsubps_xmm_xmm/hsubps_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()