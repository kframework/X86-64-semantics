### Q1 [open]

```
requires "domains.k"

module NEGMINT-TEST-SYNTAX
    imports MINT

    syntax Comment ::= "comment" [token]

    syntax Task ::=  "add" "(" Int "," Int ")" [function]
                  | Comment
    syntax Tasks ::= List{Task, ""}
endmodule

module NEGMINT-TEST
    imports NEGMINT-TEST-SYNTAX

    configuration <k>$PGM:Tasks</k>

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
> <k> comment  ( 234  ( -107  ( 8  ( 31  .Tasks ) ) ) ) </k>

Why the `comment` not written to `.`

### Q2 [open]
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

1. What does  `lableOnly, token, autoReject` mean. Is there a place wher I can see an exhaustive list of such attributes,
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
### Q3 [open]
Where is [this](https://github.com/kframework/k/blob/a1ee3ec5146ae5b4816deb32d79a5114f2966974/k-distribution/include/builtin/domains.k#L912) or [this](https://github.com/kframework/k/blob/a1ee3ec5146ae5b4816deb32d79a5114f2966974/k-distribution/include/builtin/domains.k#L1081) defined

### Q4 [open]
Consider the following k semantics
```
requires "domains.k"

module NEGMINT-TEST-SYNTAX
    imports MINT

    syntax Comment ::= ";" r"[^\n]*[\n]" [lableOnly, token, autoReject]


    syntax Task ::=  "add" "(" Int "," Int ")"
                  | Comment
    syntax Tasks ::= List{Task, ""}
endmodule

module NEGMINT-TEST
    imports NEGMINT-TEST-SYNTAX

    configuration <k>$PGM:Tasks</k>


    rule <k> Cmnt:Comment Rest:Tasks  => Rest ...</k> // Rule 1
    // rule <k> Cmnt:Comment   => . ...</k> // Rule 2
    rule add(W:Int, I:Int) => W +Int I
endmodule
```
Please note that there is no `[function]` attribute to `add`.
With input
>;comment
> add(64,170)

I got
>  <k> add ( 64 , 170 )  .Tasks </k>

1. Why rule 1 is not triggered.
2. How rule 2 is different from rule 2. If i have rule 2 instead of rule 1, then the output is
><k> ;comment
>  ( add ( 64 , 170 )  .Tasks ) </k>
