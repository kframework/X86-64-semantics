import angr
proj = angr.Project('./instructions/paddusb_xmm_xmm/paddusb_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()