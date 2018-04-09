import angr
proj = angr.Project('./instructions/rclb_rh_cl/rclb_rh_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()