import angr
proj = angr.Project('./instructions/rcll_r32_one/rcll_r32_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()