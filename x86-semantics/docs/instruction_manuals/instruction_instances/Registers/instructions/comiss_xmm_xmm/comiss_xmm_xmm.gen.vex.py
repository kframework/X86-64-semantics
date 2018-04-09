import angr
proj = angr.Project('./instructions/comiss_xmm_xmm/comiss_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()