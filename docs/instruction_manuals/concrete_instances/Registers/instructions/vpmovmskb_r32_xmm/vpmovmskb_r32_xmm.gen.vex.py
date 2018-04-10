import angr
proj = angr.Project('./instructions/vpmovmskb_r32_xmm/vpmovmskb_r32_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()