from z3 import *
import proverUtils
# Declarations

YMM1 = BitVec('YMM1', 128)
YMM2 = BitVec('YMM2', 128)
ZERO1 = BitVecVal(0, 1)
ZERO8 = BitVecVal(0, 8)
ZERO64 = BitVecVal(0, 64)
ONE1 = BitVecVal(1, 1)
ONE8 = BitVecVal(1, 8)



undef = BitVecVal(0, 1)
cvt_int32_to_single = Function('cvt_int32_to_single', IntSort(), Float32())

# Uninterpreted binary function declaration
add_double = Function('add_double', BitVecSort(64), BitVecSort(64), BitVecSort(64))
mul_double = Function('mul_double', BitVecSort(64), BitVecSort(64), BitVecSort(64))




print('[6;30;44m' + 'Start' + '[0m')



F1 =   add_double( ZERO64, ZERO64)
    
F2 =   ZERO64
#print z3.simplify(F1)
#print z3.simplify(F2)

#proverUtils.prove( F1 == F2 )

temp1_1 = mul_double(Extract(63, 0, YMM1), Extract(63, 0,YMM2));
temp1_2 = mul_double(Extract(127, 64, YMM1), Extract(127, 64,YMM2));
temp1_3 = ZERO64

temp2 =      If(And( Extract(4,4, ONE8) ==  ONE1 ,  Extract(5,5, ONE8) ==  ONE1), add_double(temp1_1, temp1_2), 
             If(And( Extract(4,4, ONE8) ==  ZERO1 , Extract(5,5, ONE8) ==  ONE1), add_double(temp1_3, temp1_2),   
             If(And( Extract(4,4, ONE8) ==  ONE1 ,  Extract(5,5, ONE8) ==  ZERO1), add_double(temp1_1, temp1_3),   
             If(And( Extract(4,4, ONE8) ==  ZERO1 , Extract(5,5, ONE8) ==  ZERO1), add_double(temp1_3, temp1_3), 
               add_double(temp1_3, temp1_3)))))  

result =  Concat( 
    If(Extract(1,1, ONE8) == ONE1, temp2, ZERO64),
    If(Extract(0,0, ONE8) == ONE1, temp2, ZERO64)
    )

print z3.simplify(result)
