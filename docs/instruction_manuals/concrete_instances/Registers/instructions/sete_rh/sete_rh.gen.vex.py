import angr
proj = angr.Project('./instructions/sete_rh/sete_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()