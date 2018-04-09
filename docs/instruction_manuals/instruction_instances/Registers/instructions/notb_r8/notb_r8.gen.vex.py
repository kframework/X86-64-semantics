import angr
proj = angr.Project('./instructions/notb_r8/notb_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()