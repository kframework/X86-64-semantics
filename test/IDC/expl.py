import idc
import idautils

for seg in idautils.Segments():      
  print idc.SegName(seg),  hex(idc.SegStart(seg)), hex(idc.SegEnd(seg))
  print "\n"

for func in idautils.Functions() :         
  print hex(func), idc.GetFunctionName(func )
  print "\n"
