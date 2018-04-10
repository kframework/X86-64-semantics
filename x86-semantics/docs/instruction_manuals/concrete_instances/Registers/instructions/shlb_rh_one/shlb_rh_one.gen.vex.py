import angr
proj = angr.Project('./instructions/shlb_rh_one/shlb_rh_one.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()