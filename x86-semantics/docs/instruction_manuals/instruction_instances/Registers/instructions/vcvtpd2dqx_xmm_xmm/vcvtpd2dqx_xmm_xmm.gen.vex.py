import angr
proj = angr.Project('./instructions/vcvtpd2dqx_xmm_xmm/vcvtpd2dqx_xmm_xmm.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()