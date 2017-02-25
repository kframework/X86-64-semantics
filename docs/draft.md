The decompiled binary is missing of various attributes like precise types, variables (stack , global, heap), control 
flow structures, exact function arguments and return types. The goal is how the absense of these attributes in decompiled 
binary affect clients like compiler optimizations and analysis (like pointer analysis and ??) or symbolic execution. 

The kind of questions that will be answered by this work are like 
- How the absence of an attribute affect a particualr client
- What set of attributes can facilitate a particular cleint.

One approach of doing that could be to start with the McSema decompiled IR and add attributes (e.g. type information) to it 
using a particular attribute recovery method (e.g. type recovery). The issues with this approach are the following.

 - Developing a attribute recovery is not the goal of this work. Exiting attribute recovery methods are either under progress or 
   they are not targetting LLVM IR.
 - Applying a existing attribute recovery transformation  may not yeild the precide attribute information as it is present in the 
   source code because of the limittaions in the underlying attribute recovery implementation or because of practical challenges 
   in recovering that attribute. 
 
Another approach is to start with the source code, lets call it version 1,  and strip off a particular attribute (like type 
information) to get version 2. Now version 2 is very different from the decompiled binary as the later has the runtime 
process stack explicit, whereas the source code that is abstracted away.  

Other appraoch to start with the decompied IR (like the once McSema produces), let call it version 1, and use the debug info to add a particular attribute to get version 2. Now version 1 and 2 are a good candidate to check the affect of the attribute on a client. 


#### Challenges
- To propagate the debug info from the binary to the decompiled IR.
 


