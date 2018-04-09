import angr
proj = angr.Project('./instructions/pmovzxbd_xmm_xmm/pmovzxbd_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()