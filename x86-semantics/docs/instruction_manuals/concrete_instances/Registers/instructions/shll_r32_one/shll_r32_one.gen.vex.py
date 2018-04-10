import angr
proj = angr.Project('./instructions/shll_r32_one/shll_r32_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()