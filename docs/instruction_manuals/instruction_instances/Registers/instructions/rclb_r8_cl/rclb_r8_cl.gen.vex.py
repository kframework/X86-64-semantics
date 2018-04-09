import angr
proj = angr.Project('./instructions/rclb_r8_cl/rclb_r8_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()