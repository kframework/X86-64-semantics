import angr
proj = angr.Project('./instructions/psubusw_xmm_xmm/psubusw_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()