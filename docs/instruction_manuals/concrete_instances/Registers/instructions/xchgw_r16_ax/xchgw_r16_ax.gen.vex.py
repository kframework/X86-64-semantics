import angr
proj = angr.Project('./instructions/xchgw_r16_ax/xchgw_r16_ax.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()