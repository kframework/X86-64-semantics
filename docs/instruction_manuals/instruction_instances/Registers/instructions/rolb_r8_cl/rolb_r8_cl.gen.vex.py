import angr
proj = angr.Project('./instructions/rolb_r8_cl/rolb_r8_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()