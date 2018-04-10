import angr
proj = angr.Project('./instructions/vcvttpd2dq_xmm_xmm/vcvttpd2dq_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()