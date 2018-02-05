requires "x86-configuration.k"

module X86-DERIVED-INSTRUCTIONS-SEMANTICS
  imports X86-CONFIGURATION

// movzbq-r64-r8

  rule <k>
    execinstr (movzbq R1:R8, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 56, 64)) )


)

    </regstate>


// xaddq-r64-r64

  rule <k>
    execinstr (xaddq R1:R64, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), getParentValue(R2, RSMap))  orBool  ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), getParentValue(R1, RSMap)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), 56, 64), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (getParentValue(R2, RSMap) )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), 63)), xorMInt(lshrMInt(getParentValue(R1, RSMap), 63), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// rclw-r16-one

  rule <k>
    execinstr (rclw $0x1, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) )  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(16, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))), 15)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap))), 15)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), getFlag("CF", RSMap)))) )


)

    </regstate>


// xorps-xmm-xmm

  rule <k>
    execinstr (xorps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// addw-r16-r16

  rule <k>
    execinstr (addw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R1, RSMap), 48, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(16, 1), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 15)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64))), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 8, 16), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(16, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), 15), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 15)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 15)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovhlps-xmm-xmm-xmm

  rule <k>
    execinstr (vmovhlps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192))) )


)

    </regstate>


// nop

  rule <k>
    execinstr (nop  .Typedoperands) ~> inforegisters ~> fetch => .
  ...</k>


// xchgl-r32-eax

  rule <k>
    execinstr (xchgl %eax, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(%rax, RSMap), 32, 64)) )


)

    </regstate>


// movss-xmm-xmm

  rule <k>
    execinstr (movss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), extractMInt(getParentValue(R1, RSMap), 224, 256)) )


)

    </regstate>


// vfnmsub231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) ) ) , 64)))) )


)

    </regstate>


// vminps-xmm-xmm-xmm

  rule <k>
    execinstr (vminps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)), 32), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)), 32), concatenateMInt(Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)), 32), Float2MInt(minFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32))))) )


)

    </regstate>


// vrcpps-xmm-xmm

  rule <k>
    execinstr (vrcpps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// shlq-r64-cl

  rule <k>
    execinstr (shlq %cl, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("SF", RSMap), mi(1, 1)) ) #then ( mi(64, -9223372036854775808) ) #else ( mi(64, 0) ) #fi) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  ) #fi) , 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "CF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("CF", RSMap) ) #else ( (#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 1)) ) #then ( (#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(getParentValue(R2, RSMap), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( (#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(shlMInt(getParentValue(R2, RSMap),  ( uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))  -Int  1 ) ), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ) #else ( undef ) #fi)  ) #fi)  ) #fi)  )

 "AF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("AF", RSMap) ) #else ( undef ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("PF", RSMap), mi(1, 1)) ) #then ( mi(8, 0) ) #else ( mi(8, 1) ) #fi) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( extractMInt(shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))), 56, 64) ) #else ( mi(8, 0) ) #fi)  ) #fi) , 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( getFlag("OF", RSMap) ) #else ( (#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 1)) ) #then ( xorMInt((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(getParentValue(R2, RSMap), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) , (#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(shlMInt(getParentValue(R2, RSMap), 1), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ) ) #else ( undef ) #fi)  ) #fi)  )

convToRegKeys(R2) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  )

 "ZF" |-> ((#ifMInt (eqMInt((#ifMInt (eqMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 0)) ) #then ( (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 1)) ) #then ( mi(64, 0) ) #else ( mi(64, 1) ) #fi) ) #else ( (#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(%rcx, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  ) #fi) , mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movups-xmm-xmm

  rule <k>
    execinstr (movups R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// movsbl-r32-r8

  rule <k>
    execinstr (movsbl R1:R8, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 56, 64))), 32, 64)) )


)

    </regstate>


// xorw-r16-r16

  rule <k>
    execinstr (xorw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "AF" |-> (undef)

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(16, 1), lshrMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), 15)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )


)

    </regstate>


// setc-r8

  rule <k>
    execinstr (setc R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )


)

    </regstate>


// adcb-rh-r8

  rule <k>
    execinstr (adcb R1:R8, R2:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 48, 56))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 56, 64)) )  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap)))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 56, 64)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovups-ymm-ymm

  rule <k>
    execinstr (vmovups R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// movswl-r32-r16

  rule <k>
    execinstr (movswl R1:R16, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64))), 32, 64)) )


)

    </regstate>


// vxorps-xmm-xmm-xmm

  rule <k>
    execinstr (vxorps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// vpunpcklqdq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpcklqdq R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// sete-r8

  rule <k>
    execinstr (sete R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))) )


)

    </regstate>


// vaddps-xmm-xmm-xmm

  rule <k>
    execinstr (vaddps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vfmsub231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32)))))))) )


)

    </regstate>


// vfnmadd213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) ) ) , 32)))))))) )


)

    </regstate>


// vmovdqu-ymm-ymm

  rule <k>
    execinstr (vmovdqu R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// cvtdq2pd-xmm-xmm

  rule <k>
    execinstr (cvtdq2pd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224)), 53, 11), 64), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256)), 53, 11), 64))) )


)

    </regstate>


// vpmovsxdq-xmm-xmm

  rule <k>
    execinstr (vpmovsxdq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256))))) )


)

    </regstate>


// divpd-xmm-xmm

  rule <k>
    execinstr (divpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vsubpd-xmm-xmm-xmm

  rule <k>
    execinstr (vsubpd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  -Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// vfmsub213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  ) , 32)))))))) )


)

    </regstate>


// vorpd-xmm-xmm-xmm

  rule <k>
    execinstr (vorpd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// vfmsub231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) )  ) , 64)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  ) , 64))) )


)

    </regstate>


// vfmadd213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) )  ) , 32)))))))) )


)

    </regstate>


// movw-r16-r16

  rule <k>
    execinstr (movw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64)) )


)

    </regstate>


// vpmovzxdq-xmm-xmm

  rule <k>
    execinstr (vpmovzxdq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 192, 224)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// vmovq-xmm-r64

  rule <k>
    execinstr (vmovq R1:R64, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(192, 0), xorMInt(getParentValue(R1, RSMap), mi(64, 0))) )


)

    </regstate>


// vmovss-xmm-xmm-xmm

  rule <k>
    execinstr (vmovss R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 224), extractMInt(getParentValue(R1, RSMap), 224, 256))) )


)

    </regstate>


// vpunpckhqdq-xmm-xmm-xmm

  rule <k>
    execinstr (vpunpckhqdq R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192))) )


)

    </regstate>


// movd-r32-xmm

  rule <k>
    execinstr (movd R1:Xmm, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 224, 256)) )


)

    </regstate>


// rsqrtps-xmm-xmm

  rule <k>
    execinstr (rsqrtps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2) ) , 32), Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2) ) , 32))))) )


)

    </regstate>


// por-xmm-xmm

  rule <k>
    execinstr (por R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// sqrtps-xmm-xmm

  rule <k>
    execinstr (sqrtps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2), 32), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2), 32))))) )


)

    </regstate>


// xchgw-r16-r16

  rule <k>
    execinstr (xchgw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), extractMInt(getParentValue(R2, RSMap), 48, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(R1, RSMap), 48, 64))   )


)

    </regstate>


// andnq-r64-r64-r64

  rule <k>
    execinstr (andnq R1:R64, R2:R64, R3:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(xorMInt(getParentValue(R2, RSMap), orMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> (undef)

 "OF" |-> (mi(1, 0) )

convToRegKeys(R3) |-> (xorMInt(getParentValue(R2, RSMap), orMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(getParentValue(R2, RSMap), orMInt(getParentValue(R2, RSMap), getParentValue(R1, RSMap))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setnz-rh

  rule <k>
    execinstr (setnz R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( mi(8, 1) ) #else ( mi(8, 0) ) #fi) , extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// setae-r8

  rule <k>
    execinstr (setae R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), (#ifMInt (eqMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )


)

    </regstate>


// vfmadd231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) )  ) , 64)))) )


)

    </regstate>


// movsbl-r32-rh

  rule <k>
    execinstr (movsbl R1:Rh, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 32, 64)) )


)

    </regstate>


// vsqrtps-xmm-xmm

  rule <k>
    execinstr (vsqrtps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2), 32), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2), 32), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2), 32))))) )


)

    </regstate>


// setno-rh

  rule <k>
    execinstr (setno R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), (#ifMInt (eqMInt(concatenateMInt(mi(31, 0), getFlag("OF", RSMap)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// movzwl-r32-r16

  rule <k>
    execinstr (movzwl R1:R16, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)) )


)

    </regstate>


// setc-rh

  rule <k>
    execinstr (setc R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vmovapd-xmm-xmm

  rule <k>
    execinstr (vmovapd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// setnge-rh

  rule <k>
    execinstr (setnge R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(xorMInt(concatenateMInt(mi(7, 0), getFlag("SF", RSMap)), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// seto-r8

  rule <k>
    execinstr (seto R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("OF", RSMap))) )


)

    </regstate>


// shlq-r64-one

  rule <k>
    execinstr (shlq $0x1, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap))  orBool  ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), 56, 64), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), 63)), xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// addss-xmm-xmm

  rule <k>
    execinstr (addss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// vfnmadd231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) ) ) ) , 32)))), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) ) ) , 32))))) )


)

    </regstate>


// addsd-xmm-xmm

  rule <k>
    execinstr (addsd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64)) )


)

    </regstate>


// cqto

  rule <k>
    execinstr (cqto  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RDX" |-> (ashrMInt(mi(64, svalueMInt(getParentValue(%rax, RSMap))), 63)   )


)

    </regstate>


// notw-r16

  rule <k>
    execinstr (notw R1:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), xorMInt(mi(16, 65535), extractMInt(getParentValue(R1, RSMap), 48, 64))) )


)

    </regstate>


// vmulps-xmm-xmm-xmm

  rule <k>
    execinstr (vmulps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// vfnmsub231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfnmsub231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) ) ) , 32))))) )


)

    </regstate>


// vmovapd-ymm-ymm

  rule <k>
    execinstr (vmovapd R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// vmovaps-ymm-ymm

  rule <k>
    execinstr (vmovaps R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap)   )


)

    </regstate>


// vmovdqa-xmm-xmm

  rule <k>
    execinstr (vmovdqa R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// xchgq-rax-r64

  rule <k>
    execinstr (xchgq R1:R64, %rax,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (getParentValue(R1, RSMap) )

convToRegKeys(R1) |-> (getParentValue(%rax, RSMap)   )


)

    </regstate>


// xorb-r8-rh

  rule <k>
    execinstr (xorb R1:Rh, R2:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// incw-r16

  rule <k>
    execinstr (incw R1:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(16, 1), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), 15)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(16, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1))), 4), mi(16, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), 8, 16), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(16, 2), addMInt(xorMInt(mi(16, 0), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), 15)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), 15), lshrMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), 15)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 48, 64), mi(16, 1)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// incl-r32

  rule <k>
    execinstr (incl R1:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64))), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), 24, 32), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(mi(32, 0), lshrMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), 31), lshrMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(mi(32, 1), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vpbroadcastq-ymm-xmm

  rule <k>
    execinstr (vpbroadcastq R1:Xmm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// movq-xmm-xmm

  rule <k>
    execinstr (movq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(64, 0), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// cvtss2sd-xmm-xmm

  rule <k>
    execinstr (cvtss2sd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// vmovq-r64-xmm

  rule <k>
    execinstr (vmovq R1:Xmm, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (extractMInt(getParentValue(R1, RSMap), 192, 256)   )


)

    </regstate>


// paddq-xmm-xmm

  rule <k>
    execinstr (paddq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(addMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), addMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// adcb-rh-rh

  rule <k>
    execinstr (adcb R1:Rh, R2:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), extractMInt(getParentValue(R2, RSMap), 48, 56))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), extractMInt(getParentValue(R1, RSMap), 48, 56)) )  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap)))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), 7), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap)))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 56), extractMInt(getParentValue(R1, RSMap), 48, 56)), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// shlxq-r64-r64-r64

  rule <k>
    execinstr (shlxq R1:R64, R2:R64, R3:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( shlMInt(getParentValue(R2, RSMap), uvalueMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)))) ) #else ( mi(64, 0) ) #fi)  )


)

    </regstate>


// vbroadcastsd-ymm-xmm

  rule <k>
    execinstr (vbroadcastsd R1:Xmm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// addl-r32-r32

  rule <k>
    execinstr (addl R1:R32, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R1, RSMap), 32, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 24, 32), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vfnmadd213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) ) ) , 64)))) )


)

    </regstate>


// vmaxps-xmm-xmm-xmm

  rule <k>
    execinstr (vmaxps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)), 32), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)), 32), concatenateMInt(Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)), 32), Float2MInt(maxFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)), 32))))) )


)

    </regstate>


// addpd-xmm-xmm

  rule <k>
    execinstr (addpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// orw-r16-r16

  rule <k>
    execinstr (orw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(orMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64)))), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(orMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), orMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R1, RSMap), 48, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(orMInt(mi(64, svalueMInt(extractMInt(getParentValue(R2, RSMap), 48, 64))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 64)))), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// adcb-r8-rh

  rule <k>
    execinstr (adcb R1:Rh, R2:R8,  .Typedoperands) => .
  ...</k>


// vmovupd-ymm-ymm

  rule <k>
    execinstr (vmovupd R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )


)

    </regstate>


// sets-r8

  rule <k>
    execinstr (sets R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("SF", RSMap))) )


)

    </regstate>


// xorl-r32-r32

  rule <k>
    execinstr (xorl R1:R32, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (xorMInt(concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movdqa-xmm-xmm

  rule <k>
    execinstr (movdqa R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// shlb-r8-one

  rule <k>
    execinstr (shlb $0x1, R2:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R2, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// stc

  rule <k>
    execinstr (stc  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 1)   )


)

    </regstate>


// xchgw-r16-ax

  rule <k>
    execinstr (xchgw %ax, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 48), extractMInt(getParentValue(R2, RSMap), 48, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(getParentValue(%rax, RSMap), 48, 64))   )


)

    </regstate>


// sarxq-r64-r64-r64

  rule <k>
    execinstr (sarxq R1:R64, R2:R64, R3:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> ((#ifMInt (ultMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)), mi(8, 64)) ) #then ( ashrMInt(mi(64, svalueMInt(getParentValue(R2, RSMap))), uvalueMInt(andMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), mi(8, 63)))) ) #else ( (#ifMInt (eqMInt((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(getParentValue(R2, RSMap), mi(64, -9223372036854775808)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) , mi(1, 0)) ) #then ( mi(64, 0) ) #else ( mi(64, -1) ) #fi)  ) #fi)  )


)

    </regstate>


// divps-xmm-xmm

  rule <k>
    execinstr (divps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  /Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// rclq-r64-one

  rule <k>
    execinstr (rclq $0x1, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap))  orBool  ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) )  orBool  ( ultMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))), addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)))  orBool  ultMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))), 63)), xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), getFlag("CF", RSMap))) )


)

    </regstate>


// mulpd-xmm-xmm

  rule <k>
    execinstr (mulpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// setnp-r8

  rule <k>
    execinstr (setnp R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), (#ifMInt (eqMInt(concatenateMInt(mi(15, 0), getFlag("PF", RSMap)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )


)

    </regstate>


// vpmovzxwq-xmm-xmm

  rule <k>
    execinstr (vpmovzxwq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))) )


)

    </regstate>


// vmovupd-xmm-xmm

  rule <k>
    execinstr (vmovupd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// cmovzq-r64-r64

  rule <k>
    execinstr (cmovzq R1:R64, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> ((#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( getParentValue(R2, RSMap) ) #else ( getParentValue(R1, RSMap) ) #fi)  )


)

    </regstate>


// vfnmsub213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) ) ) ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) ) ) ) , 64)))) )


)

    </regstate>


// vmovups-xmm-xmm

  rule <k>
    execinstr (vmovups R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// vfnmadd231pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmadd231pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11) ) ) ) , 64)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11) ) ) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11)  +Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11) ) ) ) , 64))) )


)

    </regstate>


// xaddl-r32-r32

  rule <k>
    execinstr (xaddl R1:R32, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), extractMInt(getParentValue(R1, RSMap), 32, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))), 4), mi(32, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 24, 32), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R1, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovaps-xmm-xmm

  rule <k>
    execinstr (vmovaps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// vbroadcastss-xmm-xmm

  rule <k>
    execinstr (vbroadcastss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 224, 256), extractMInt(getParentValue(R1, RSMap), 224, 256)))) )


)

    </regstate>


// vfmadd213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  ) , 64)))) )


)

    </regstate>


// cmovnzw-r16-r16

  rule <k>
    execinstr (cmovnzw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( extractMInt(getParentValue(R1, RSMap), 48, 64) ) #else ( extractMInt(getParentValue(R2, RSMap), 48, 64) ) #fi) ) )


)

    </regstate>


// vfnmsub213ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub213ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8) ) ) ) , 32)))))))) )


)

    </regstate>


// cvtps2pd-xmm-xmm

  rule <k>
    execinstr (cvtps2pd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)), 64), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// mulps-xmm-xmm

  rule <k>
    execinstr (mulps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// vmovsd-xmm-xmm-xmm

  rule <k>
    execinstr (vmovsd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// movddup-xmm-xmm

  rule <k>
    execinstr (movddup R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// addb-r8-r8

  rule <k>
    execinstr (addb R1:R8, R2:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 56, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// movapd-xmm-xmm

  rule <k>
    execinstr (movapd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// movdqu-xmm-xmm

  rule <k>
    execinstr (movdqu R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// orps-xmm-xmm

  rule <k>
    execinstr (orps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(orMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// vmovddup-xmm-xmm

  rule <k>
    execinstr (vmovddup R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// vorps-xmm-xmm-xmm

  rule <k>
    execinstr (vorps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(orMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 128, 192)), orMInt(extractMInt(getParentValue(R2, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256)))) )


)

    </regstate>


// decq-r64

  rule <k>
    execinstr (decq R1:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap))), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), 56, 64), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(mi(64, 1), lshrMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), 63)), xorMInt(lshrMInt(getParentValue(R1, RSMap), 63), lshrMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(mi(64, 18446744073709551615), getParentValue(R1, RSMap)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vmovlhps-xmm-xmm-xmm

  rule <k>
    execinstr (vmovlhps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// movzbw-r16-rh

  rule <k>
    execinstr (movzbw R1:Rh, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))) )


)

    </regstate>


// clc

  rule <k>
    execinstr (clc  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )


)

    </regstate>


// addps-xmm-xmm

  rule <k>
    execinstr (addps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8) ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)))) )


)

    </regstate>


// setb-r8

  rule <k>
    execinstr (setb R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("CF", RSMap))) )


)

    </regstate>


// vaddpd-xmm-xmm-xmm

  rule <k>
    execinstr (vaddpd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11) ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  +Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// nopl-r32

  rule <k>
    execinstr (nopl R1:R32,  .Typedoperands) => .
  ...</k>


// rcpps-xmm-xmm

  rule <k>
    execinstr (rcpps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) , 32), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32))))) )


)

    </regstate>


// movsd-xmm-xmm

  rule <k>
    execinstr (movsd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// vfmsub132ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmsub132ps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  -Float  ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32))))) )


)

    </regstate>


// movzbw-r16-r8

  rule <k>
    execinstr (movzbw R1:R8, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(mi(8, 0), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vfmadd231ps-xmm-xmm-xmm

  rule <k>
    execinstr (vfmadd231ps R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32))))) )


)

    </regstate>


// rcpss-xmm-xmm

  rule <k>
    execinstr (rcpss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( 1e+00  /Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// shll-r32-one

  rule <k>
    execinstr (shll $0x1, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(32, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), 31)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> (undef)

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), 24, 32), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), mi(32, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vsqrtpd-xmm-xmm

  rule <k>
    execinstr (vsqrtpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11), 2), 64), Float2MInt(rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11), 2), 64))) )


)

    </regstate>


// pmovzxwq-xmm-xmm

  rule <k>
    execinstr (pmovzxwq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 224, 240)), concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 240, 256)))) )


)

    </regstate>


// movzbl-r32-rh

  rule <k>
    execinstr (movzbl R1:Rh, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(56, 0), extractMInt(getParentValue(R1, RSMap), 48, 56))   )


)

    </regstate>


// decb-r8

  rule <k>
    execinstr (decb R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(mi(8, 1), lshrMInt(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(mi(8, 255), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// rolw-r16-one

  rule <k>
    execinstr (rolw $0x1, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64))  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(16, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), 15)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), 15), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), 15)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), concatenateMInt(mi(15, 0), (#ifMInt (ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 48, 64), extractMInt(getParentValue(R2, RSMap), 48, 64)), extractMInt(getParentValue(R2, RSMap), 48, 64)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ))) )


)

    </regstate>


// rolq-r64-one

  rule <k>
    execinstr (rolq $0x1, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap))  orBool  ( ultMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)))  orBool  ultMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), 63)), xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), concatenateMInt(mi(63, 0), (#ifMInt (ultMInt(addMInt(getParentValue(R2, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) )) )


)

    </regstate>


// xchgq-r64-r64

  rule <k>
    execinstr (xchgq R1:R64, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap) )

convToRegKeys(R1) |-> (getParentValue(R2, RSMap) )


)

    </regstate>


// pmovsxdq-xmm-xmm

  rule <k>
    execinstr (pmovsxdq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224))), mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256))))) )


)

    </regstate>


// vmovdqu-xmm-xmm

  rule <k>
    execinstr (vmovdqu R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// popcntw-r16-r16

  rule <k>
    execinstr (popcntw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> (mi(1, 0) )

 "SF" |-> (mi(1, 0) )

 "AF" |-> (mi(1, 0) )

 "PF" |-> (mi(1, 0) )

 "OF" |-> (mi(1, 0) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(mi(64, countOnes(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), 0)), 48, 64)) )

 "ZF" |-> ((#ifMInt (eqMInt(concatenateMInt(mi(48, 0), extractMInt(getParentValue(R1, RSMap), 48, 64)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vpbroadcastq-xmm-xmm

  rule <k>
    execinstr (vpbroadcastq R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R1, RSMap), 192, 256))) )


)

    </regstate>


// xchgl-eax-r32

  rule <k>
    execinstr (xchgl R1:R32, %eax,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64)) )

convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(%rax, RSMap), 32, 64))   )


)

    </regstate>


// unpcklpd-xmm-xmm

  rule <k>
    execinstr (unpcklpd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// movlhps-xmm-xmm

  rule <k>
    execinstr (movlhps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256))) )


)

    </regstate>


// movq-r64-xmm

  rule <k>
    execinstr (movq R1:Xmm, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (extractMInt(getParentValue(R1, RSMap), 192, 256) )


)

    </regstate>


// xchgl-r32-r32

  rule <k>
    execinstr (xchgl R1:R32, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R2, RSMap), 32, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), extractMInt(getParentValue(R1, RSMap), 32, 64))   )


)

    </regstate>


// setb-rh

  rule <k>
    execinstr (setb R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// movb-rh-rh

  rule <k>
    execinstr (movb R1:Rh, R2:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), concatenateMInt(extractMInt(getParentValue(R1, RSMap), 48, 56), extractMInt(getParentValue(R2, RSMap), 56, 64))) )


)

    </regstate>


// setnp-rh

  rule <k>
    execinstr (setnp R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), (#ifMInt (eqMInt(concatenateMInt(mi(15, 0), getFlag("PF", RSMap)), mi(16, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi) ), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vcvtss2sd-xmm-xmm-xmm

  rule <k>
    execinstr (vcvtss2sd R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// cmovzw-r16-r16

  rule <k>
    execinstr (cmovzw R1:R16, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( extractMInt(getParentValue(R2, RSMap), 48, 64) ) #else ( extractMInt(getParentValue(R1, RSMap), 48, 64) ) #fi) ) )


)

    </regstate>


// incb-r8

  rule <k>
    execinstr (incb R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(mi(8, 0), lshrMInt(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(mi(8, 1), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// vrsqrtps-xmm-xmm

  rule <k>
    execinstr (vrsqrtps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8), 2) ) , 32), concatenateMInt(Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8), 2) ) , 32), Float2MInt( ( 1e+00  /Float  rootFloat(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8), 2) ) , 32))))) )


)

    </regstate>


// vfnmsub231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfnmsub231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) ) ) ) , 32)))), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) ) ) ) , 32), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) ) ) ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  -Float  negateFloat( ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) ) ) ) , 32))))) )


)

    </regstate>


// cbtw

  rule <k>
    execinstr (cbtw  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (concatenateMInt(extractMInt(getParentValue(%rax, RSMap), 0, 48), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(%rax, RSMap), 56, 64))), 48, 64)) )


)

    </regstate>


// mulsd-xmm-xmm

  rule <k>
    execinstr (mulsd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), concatenateMInt(extractMInt(getParentValue(R2, RSMap), 128, 192), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11) ) , 64))) )


)

    </regstate>


// nopw-r16

  rule <k>
    execinstr (nopw R1:R16,  .Typedoperands) => .
  ...</k>


// setbe-r8

  rule <k>
    execinstr (setbe R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), (#ifMInt (eqMInt(getFlag("ZF", RSMap), mi(1, 0)) ) #then ( concatenateMInt(mi(7, 0), getFlag("CF", RSMap)) ) #else ( concatenateMInt(mi(7, 0), getFlag("ZF", RSMap)) ) #fi) ) )


)

    </regstate>


// vcvtps2pd-xmm-xmm

  rule <k>
    execinstr (vcvtps2pd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8)), 64), Float2MInt(Float2Double(MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)), 64))) )


)

    </regstate>


// movsbw-r16-rh

  rule <k>
    execinstr (movsbw R1:Rh, R2:R16,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 48), extractMInt(mi(64, svalueMInt(extractMInt(getParentValue(R1, RSMap), 48, 56))), 48, 64)) )


)

    </regstate>


// movupd-xmm-xmm

  rule <k>
    execinstr (movupd R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// addq-r64-r64

  rule <k>
    execinstr (addq R1:R64, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), getParentValue(R1, RSMap))  orBool  ultMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), getParentValue(R2, RSMap)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(64, 1), lshrMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), 63)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap))), 4), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(extractMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), 56, 64), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(64, 2), addMInt(xorMInt(lshrMInt(getParentValue(R1, RSMap), 63), lshrMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), 63)), xorMInt(lshrMInt(getParentValue(R2, RSMap), 63), lshrMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), 63)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(getParentValue(R1, RSMap), getParentValue(R2, RSMap)), mi(64, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)    )


)

    </regstate>


// setz-r8

  rule <k>
    execinstr (setz R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("ZF", RSMap))) )


)

    </regstate>


// vfmadd231ps-ymm-ymm-ymm

  rule <k>
    execinstr (vfmadd231ps R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 32), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 32), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 32), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 32, 64), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 32, 64), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 32, 64), 24, 8) )  ) , 32)), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 96), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 96), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 96), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 96, 128), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 96, 128), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 96, 128), 24, 8) )  ) , 32)), concatenateMInt(concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 160), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 160), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 160), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 160, 192), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 160, 192), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 160, 192), 24, 8) )  ) , 32)), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 224), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 224), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 224), 24, 8) )  ) , 32), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R3, RSMap), 224, 256), 24, 8)  +Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8) )  ) , 32))))) )


)

    </regstate>


// setno-r8

  rule <k>
    execinstr (setno R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(concatenateMInt(mi(7, 0), getFlag("OF", RSMap)), mi(8, 1))) )


)

    </regstate>


// xaddb-r8-r8

  rule <k>
    execinstr (xaddb R1:R8, R2:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R2, RSMap), 56, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), extractMInt(getParentValue(R1, RSMap), 56, 64)) )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "AF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(andMInt(lshrMInt(xorMInt(xorMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))), 4), mi(8, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), extractMInt(getParentValue(R2, RSMap), 56, 64)) )

convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 56), addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64))) )

 "ZF" |-> ((#ifMInt (eqMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), mi(8, 0)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "SF" |-> ((#ifMInt (eqMInt(mi(8, 1), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "PF" |-> ((#ifMInt ((#ifBool ( notBool  (  ( uvalueMInt(xorMInt(andMInt(mi(64, countOnes(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 0)), mi(64, 1)), mi(64, 1)))  ==K  0 )  )  ) #then ( true ) #else ( false ) #fi) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(8, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)), xorMInt(lshrMInt(extractMInt(getParentValue(R1, RSMap), 56, 64), 7), lshrMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 56, 64), extractMInt(getParentValue(R1, RSMap), 56, 64)), 7)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )


)

    </regstate>


// movaps-xmm-xmm

  rule <k>
    execinstr (movaps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 128), extractMInt(getParentValue(R1, RSMap), 128, 256)) )


)

    </regstate>


// setp-r8

  rule <k>
    execinstr (setp R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), concatenateMInt(mi(7, 0), getFlag("PF", RSMap))) )


)

    </regstate>


// vmovdqa-ymm-ymm

  rule <k>
    execinstr (vmovdqa R1:Ymm, R2:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (getParentValue(R1, RSMap)   )


)

    </regstate>


// rcll-r32-one

  rule <k>
    execinstr (rcll $0x1, R2:R32,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "CF" |-> ((#ifMInt ( (  ( ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64))  orBool  ultMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), extractMInt(getParentValue(R2, RSMap), 32, 64)) )  orBool  ( ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))), addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)))  orBool  ultMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))) )  )  ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

 "OF" |-> ((#ifMInt (eqMInt(mi(32, 2), addMInt(xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))), 31)), xorMInt(lshrMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), 31), lshrMInt(addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap))), 31)))) ) #then ( mi(1, 1) ) #else ( mi(1, 0) ) #fi)  )

convToRegKeys(R2) |-> (concatenateMInt(mi(32, 0), addMInt(addMInt(extractMInt(getParentValue(R2, RSMap), 32, 64), extractMInt(getParentValue(R2, RSMap), 32, 64)), concatenateMInt(mi(31, 0), getFlag("CF", RSMap)))) )


)

    </regstate>


// setnae-rh

  rule <k>
    execinstr (setnae R1:Rh,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 48), concatenateMInt(concatenateMInt(mi(7, 0), getFlag("CF", RSMap)), extractMInt(getParentValue(R1, RSMap), 56, 64))) )


)

    </regstate>


// vpxor-xmm-xmm-xmm

  rule <k>
    execinstr (vpxor R1:Xmm, R2:Xmm, R3:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(mi(128, 0), concatenateMInt(xorMInt(extractMInt(getParentValue(R1, RSMap), 128, 192), extractMInt(getParentValue(R2, RSMap), 128, 192)), xorMInt(extractMInt(getParentValue(R1, RSMap), 192, 256), extractMInt(getParentValue(R2, RSMap), 192, 256)))) )


)

    </regstate>


// cltq

  rule <k>
    execinstr (cltq  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (mi(64, svalueMInt(extractMInt(getParentValue(%rax, RSMap), 32, 64))) )


)

    </regstate>


// vfmsub213pd-ymm-ymm-ymm

  rule <k>
    execinstr (vfmsub213pd R1:Ymm, R2:Ymm, R3:Ymm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R3) |-> (concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 0, 64), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 0, 64), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 0, 64), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 64, 128), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 64, 128), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 64, 128), 53, 11) )  ) , 64), concatenateMInt(Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 128, 192), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 128, 192), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 128, 192), 53, 11) )  ) , 64), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 192, 256), 53, 11)  -Float  ( MInt2Float(extractMInt(getParentValue(R2, RSMap), 192, 256), 53, 11)  *Float  MInt2Float(extractMInt(getParentValue(R3, RSMap), 192, 256), 53, 11) )  ) , 64)))) )


)

    </regstate>


// xchgq-r64-rax

  rule <k>
    execinstr (xchgq %rax, R2:R64,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
 "RAX" |-> (getParentValue(R2, RSMap) )

convToRegKeys(R2) |-> (getParentValue(%rax, RSMap) )


)

    </regstate>


// setpo-r8

  rule <k>
    execinstr (setpo R1:R8,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R1) |-> (concatenateMInt(extractMInt(getParentValue(R1, RSMap), 0, 56), xorMInt(concatenateMInt(mi(7, 0), getFlag("PF", RSMap)), mi(8, 1))) )


)

    </regstate>


// mulss-xmm-xmm

  rule <k>
    execinstr (mulss R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(extractMInt(getParentValue(R2, RSMap), 0, 224), Float2MInt( ( MInt2Float(extractMInt(getParentValue(R1, RSMap), 224, 256), 24, 8)  *Float  MInt2Float(extractMInt(getParentValue(R2, RSMap), 224, 256), 24, 8) ) , 32)) )


)

    </regstate>


// vcvtdq2ps-xmm-xmm

  rule <k>
    execinstr (vcvtdq2ps R1:Xmm, R2:Xmm,  .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
convToRegKeys(R2) |-> (concatenateMInt(mi(128, 0), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 128, 160)), 24, 8), 32), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 160, 192)), 24, 8), 32), concatenateMInt(Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 192, 224)), 24, 8), 32), Float2MInt(Int2Float(svalueMInt(extractMInt(getParentValue(R1, RSMap), 224, 256)), 24, 8), 32))))) )


)

    </regstate>

endmodule