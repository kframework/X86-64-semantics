import angr
proj = angr.Project('./instructions/sarb_r8_one/sarb_r8_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()