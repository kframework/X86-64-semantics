import angr
proj = angr.Project('./instructions/rclq_r64_cl/rclq_r64_cl.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()