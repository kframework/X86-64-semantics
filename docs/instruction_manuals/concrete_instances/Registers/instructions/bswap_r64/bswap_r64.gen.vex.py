import angr
proj = angr.Project('./instructions/bswap_r64/bswap_r64.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()