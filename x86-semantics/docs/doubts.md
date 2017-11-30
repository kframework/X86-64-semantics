### Q [open]
```
 rule concatSymbol(S1:Symbol, S2:Symbol, Del:String) =>
       #parseToken("Symbol@X86-ABSTRACT-SORTS",
                   Symbol2String(S1) +String Del +String Symbol2String(S2))

  rule enumSymbol(S1:Symbol, I:Int) =>
       #parseToken("Symbol@X86-ABSTRACT-SORTS",
                   Symbol2String(S1) +String "#" +String Int2String(I))
```

### Q [open]
```
requires "domains.k"

module NEGMINT-TEST-SYNTAX
    imports MINT

    syntax Comment ::= "#" r"[^\n]*[\n]" [lableOnly, token, autoReject]

    syntax Task ::=  "add" "(" Int "," Int ")" [function]
                  | Comment
    syntax Tasks ::= List{Task, ""}
endmodule

module NEGMINT-TEST
    imports NEGMINT-TEST-SYNTAX

    configuration <k>$PGM:Tasks</k>
    rule T:Task Ts:Tasks => T ~> Ts
    rule <k> Cmnt:Comment   => . ...</k> // Rule 1
    rule add(W:Int, I:Int) => W +Int I
endmodule
```

With input

> #comment
> add(64,170)

I got

> <k> #comment
>   ( 234  .Tasks ) </k>

1. What does  `lableOnly, token, autoReject onlyLabel` mean. Is there a place wher I can see an exhaustive list of such attributes.
2.  If I remove all the attributes, I got the following on krun
```
java.lang.AssertionError: Unimplemented yet
	at org.kframework.unparser.KOREToTreeNodes$.$anonfun$toString$1(KOREToTreeNodes.scala:56)
	at scala.collection.TraversableLike.$anonfun$map$1(TraversableLike.scala:234)
	at scala.collection.immutable.List.foreach(List.scala:389)
	at scala.collection.TraversableLike.map(TraversableLike.scala:234)
	at scala.collection.TraversableLike.map$(TraversableLike.scala:227)
	at scala.collection.immutable.List.map(List.scala:295)
	at org.kframework.unparser.KOREToTreeNodes$.toString(KOREToTreeNodes.scala:50)
	at org.kframework.unparser.KOREToTreeNodes$.$anonfun$toString$1(KOREToTreeNodes.scala:54)
	at scala.collection.TraversableLike.$anonfun$map$1(TraversableLike.scala:234)
	at scala.collection.immutable.List.foreach(List.scala:389)
	at scala.collection.TraversableLike.map(TraversableLike.scala:234)
	at scala.collection.TraversableLike.map$(TraversableLike.scala:227)
	at scala.collection.immutable.List.map(List.scala:295)
	at org.kframework.unparser.KOREToTreeNodes$.toString(KOREToTreeNodes.scala:50)
	at org.kframework.unparser.KOREToTreeNodes$.$anonfun$toString$1(KOREToTreeNodes.scala:54)
	at scala.collection.TraversableLike.$anonfun$map$1(TraversableLike.scala:234)
	at scala.collection.immutable.List.foreach(List.scala:389)
	at scala.collection.TraversableLike.map(TraversableLike.scala:234)
	at scala.collection.TraversableLike.map$(TraversableLike.scala:227)
	at scala.collection.immutable.List.map(List.scala:295)
	at org.kframework.unparser.KOREToTreeNodes$.toString(KOREToTreeNodes.scala:50)
	at org.kframework.unparser.KOREToTreeNodes.toString(KOREToTreeNodes.scala)
	at org.kframework.krun.KRun.unparseTerm(KRun.java:434)
	at org.kframework.krun.KRun.prettyPrint(KRun.java:315)
	at org.kframework.krun.KRun.filterAnonVarsAndPrint(KRun.java:164)
	at org.kframework.krun.KRun.printK(KRun.java:215)
	at org.kframework.krun.KRun.run(KRun.java:108)
	at org.kframework.krun.KRunFrontEnd.run(KRunFrontEnd.java:67)
	at org.kframework.main.FrontEnd.main(FrontEnd.java:34)
	at org.kframework.main.Main.runApplication(Main.java:415)
	at org.kframework.main.Main.runApplication(Main.java:264)
	at org.kframework.main.Main.main(Main.java:73)

```
### Q [closed]

```
requires "domains.k"

module NEGMINT-TEST-SYNTAX
    imports MINT

    syntax Comment ::= "comment" [token]

    syntax Task ::=  "add" "(" Int "," Int ")" [function]
                  | Comment
                  | Int
    syntax Tasks ::= List{Task, ""}
endmodule

module NEGMINT-TEST
    imports NEGMINT-TEST-SYNTAX

    configuration <k>$PGM:Tasks</k>

    rule T:Task Ts:Tasks => T ~> Ts
    rule <k> comment   => . ...</k> // Rule 1
    rule add(W:Int, I:Int) => W +Int I
endmodule
```

In the above snippet,  why the ``Rule 1`` in bold is not
triggered with input

> comment
> add(64,170)
> add(64,-171)

The output that I am getting is:
> <k> comment  ( 234  ( -107  .Tasks ) ) </k>

If i remove `function` atribute, then I am getting
> <k> 234 ~> ( add ( 64 , -171 )  .Tasks ) </k>

as expected.

Soln: At the very beginning we have
<k> comment  ( 234  ( -107  .Tasks ) ) </k>
and now
```
rule T:Task Ts:Tasks => T ~> Ts
```
does not match.

### Q: Hex to String [Asked]
Detail:
I would like to parse a hex constant like
```
syntax HexConstant ::=  r"0x[0-9a-fA-F]*" [token]
```
and use the hook  `STRING.string2base` to get the `Int` equivalent, but for that i need the hex as String, which I could not find how to get.

```
    syntax Int ::= HexStringtToInt(String, Int)  [function, hook(STRING.string2base)]

    rule convert(S:String) => HexStringtToInt(S, 16)
```

### Q4 [Closed]
Where is [this](https://github.com/kframework/k/blob/a1ee3ec5146ae5b4816deb32d79a5114f2966974/k-distribution/include/builtin/domains.k#L912) or [this](https://github.com/kframework/k/blob/a1ee3ec5146ae5b4816deb32d79a5114f2966974/k-distribution/include/builtin/domains.k#L1081) defined

They are added  as hooks to java routines. like
```
java-backend/target/classes/org/kframework/backend/java/symbolic/hooks.properties:KRYPTO.keccak256: org.kframework.backend.java.builtins.BuiltinCryptoOperations.keccak256
```

### Q5: Why this hangs [Closed]

```
requires "domains.k"

module NEGMINT-TEST-SYNTAX
    imports MINT

    syntax Comment ::=  ";" r"[^\n]*[\n]" [lableOnly, token, autoReject] //1

    syntax Task ::=  "add" "(" Int "," Int ")" [function]
                  | Comment //1
     syntax Tasks ::= List{Task, ""}
endmodule

module NEGMINT-TEST
    imports NEGMINT-TEST-SYNTAX

    configuration <k>$PGM:Tasks</k>

    rule <k>Comment => . ...</k> // <--- Fix C:Coment

    rule add(W:Int, I:Int) => W +Int I
endmodule
```
This hangs on
> add(10,20)
Removing lines commmented as 1 solves it.
