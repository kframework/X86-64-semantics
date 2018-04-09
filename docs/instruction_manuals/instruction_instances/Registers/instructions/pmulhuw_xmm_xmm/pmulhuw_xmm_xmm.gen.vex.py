import angr
proj = angr.Project('./instructions/pmulhuw_xmm_xmm/pmulhuw_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()