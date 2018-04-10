import angr
proj = angr.Project('./instructions/setnz_r8/setnz_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()