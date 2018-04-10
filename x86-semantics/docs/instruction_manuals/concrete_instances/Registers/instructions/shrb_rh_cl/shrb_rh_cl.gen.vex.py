import angr
proj = angr.Project('./instructions/shrb_rh_cl/shrb_rh_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()