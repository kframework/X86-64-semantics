import angr
proj = angr.Project('./instructions/sqrtpd_xmm_xmm/sqrtpd_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()