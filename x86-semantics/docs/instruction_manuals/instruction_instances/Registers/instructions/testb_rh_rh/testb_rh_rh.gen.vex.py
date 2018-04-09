import angr
proj = angr.Project('./instructions/testb_rh_rh/testb_rh_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()