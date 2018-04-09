import angr
proj = angr.Project('./instructions/xchgq_r64_rax/xchgq_r64_rax.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()