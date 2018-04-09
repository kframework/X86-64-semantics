import angr
proj = angr.Project('./instructions/notb_rh/notb_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()