import angr
proj = angr.Project('./instructions/vpmovzxwq_ymm_xmm/vpmovzxwq_ymm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()