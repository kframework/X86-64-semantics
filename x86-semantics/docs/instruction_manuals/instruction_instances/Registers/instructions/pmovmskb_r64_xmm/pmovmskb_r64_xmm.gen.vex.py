import angr
proj = angr.Project('./instructions/pmovmskb_r64_xmm/pmovmskb_r64_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()