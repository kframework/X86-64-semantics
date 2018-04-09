import angr
proj = angr.Project('./instructions/subw_r16_r16/subw_r16_r16.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()