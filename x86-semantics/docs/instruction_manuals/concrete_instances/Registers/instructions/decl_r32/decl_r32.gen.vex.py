import angr
proj = angr.Project('./instructions/decl_r32/decl_r32.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()