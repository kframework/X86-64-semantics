```
On 2016-07-27 08:34, Sandeep Dasgupta wrote:
>
> Question 1
>
> In reference to this particular paper, is variable recovery included
> in this type inference ? Or the variables (like scalar and aggregate
> variables) are already recovered before this particular type
> inference
> kicks in ? Or variable recovery is irrelevant  in the context of this
> paper,  because this paper only talks about inferring the type of
> stack offsets?

In our case, we performed variable recovery using CodeSurfer's standard
analyses first, then used Retypd to perform type inference over the
recovered variables.

Because of this two-phase approach, knowledge gained during type
inference
is not directly reflected back on the layout of memory regions (e.g.
the
stack regions or or global region).

> From the constraints generated (as given in Figure 2), it seems that
> some constraints considers the offset information of the  fields of
> a structure (w.r.t the procedure's base pointer ), which after
> solving
> is going to help in knowing the type of the those fields. But it is
> not obvious to me if this particular paper is doing any kind of
> "structure variable" recovery using those offset information ?

The flip-side to the two-phase approach is that even if CodeSurfer does
*not* determine that variable X points to region Y that has layout
{ int, char* } Retypd may still be able to figure out that X's type is
{ int, char* }*. So Retypd often figures out lots of structural
layout information beyond CodeSurfer's normal variable recovery.

> More specifically, In figure 2 of the paper, we can see the following
> constraints corresponding to instructions mov eax ,dword [edx]  and
> mov eax ,dword [edx + 4] respectively.
>
>>  τ.load.σ32@0 <: τ
>
>> τ.load.σ32@4 <: int ∧#FileDescriptor
>
> Are these constraints  also used to infer a "structure variable" with
> two fields at offset 0 and 4? Or its is used just to infer the type
> of
> the variables at offsets 0 and 4 from the base pointer of the
> procedure?

The former: even if we do not have an abstract location to represent
the points-to
target of τ, Retypd will still infer τ ~ struct T { struct T * x; int
y; } here.

> Question2
>
> This question is  related to my previous question.
>
> As you  mentioned  that you do not need any pointer analysis
> information to infer that x has a the type struct S { struct S *,
> ...}*. I believe that the way you achieve this is by adding a new
> constraint for each instruction corresponding to the access of the
> fields of x and solving them later. (Please correct me if I am wrong
> here).  If this is correct, then doesn't that mean that you  already
> have the information that x is a struct (but of course without the
> type information of its fields) before starting this type inference?

The constraints are generated only from syntactic information about the
program's instructions, so there is no need to know facts like "X is a
struct",
"Y is a pointer" etc before beginning.

Matt
```
