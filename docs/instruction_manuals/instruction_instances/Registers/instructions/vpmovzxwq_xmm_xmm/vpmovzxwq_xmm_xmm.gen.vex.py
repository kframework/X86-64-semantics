import angr
proj = angr.Project('./instructions/vpmovzxwq_xmm_xmm/vpmovzxwq_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()