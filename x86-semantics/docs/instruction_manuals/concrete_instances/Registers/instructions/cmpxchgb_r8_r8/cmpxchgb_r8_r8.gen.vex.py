import angr
proj = angr.Project('./instructions/cmpxchgb_r8_r8/cmpxchgb_r8_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()