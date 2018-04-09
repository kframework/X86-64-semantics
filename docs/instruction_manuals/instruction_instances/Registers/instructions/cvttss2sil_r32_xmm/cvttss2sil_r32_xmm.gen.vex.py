import angr
proj = angr.Project('./instructions/cvttss2sil_r32_xmm/cvttss2sil_r32_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()