from z3 import *

# x = Int('x')
# y = Int('y')
# solve(x > 2, y < 10, x + 2*y == 7)
# 
# x = Int('x')
# y = Int('y')
# print simplify(x + y + 2*x + 3)
# print simplify(x < y + x + 2)
# print simplify(And(x + 1 >= 3, x**2 + x**2 + y**2 + 2 >= 5))
# 
# x = Int('x')
# y = Int('y')
# print x**2 + y**2 >= 1
# set_option(html_mode=False)
# print x**2 + y**2 >= 1

# x = Int('x')
# y = Int('y')
# n = x + y >= 3
# print "num args: ", n.num_args()
# print "children: ", n.children()
# print "1st child:", n.arg(0)
# print "2nd child:", n.arg(1)
# print "operator: ", n.decl()
# print "op name:  ", n.decl().name()

# x = Real('x')
# solve(x > 4, x < 0)

# p = Bool('p')
# q = Bool('q')
# r = Bool('r')
# solve(Implies(p, q), r == Not(q), Or(Not(p), r))


# p = Bool('p')
# q = Bool('q')
# print And(p, q, True)
# print simplify(And(p, q, True))
# print simplify(And(p, q, False))

# p = Bool('p')
# x = Real('x')
# solve(Or(x < 5, x > 10), Or(p, x**2 == 2), Not(p))

# x = Int('x')
# y = Int('y')
# 
# s = Solver()
# print s
# 
# s.add(x > 10, y == x + 2)
# print s
# print "Solving constraints in the solver s ..."
# print s.check()
# 
# print "Create a new scope..."
# s.push()
# s.add(y < 11)
# print s
# print "Solving updated set of constraints..."
# print s.check()
# 
# print "Restoring state..."
# s.pop()
# print s
# print "Solving restored set of constraints..."
# print s.check()

# x = Real('x')
# y = Real('y')
# s = Solver()
# s.add(x > 1, y > 1, Or(x + y > 3, x - y < 2))
# print "asserted constraints..."
# for c in s.assertions():
#     print c
# 
# print s.check()
# print "statistics for the last check method..."
# print s.statistics()
# # Traversing statistics
# for k, v in s.statistics():
#     print "%s : %s" % (k, v)


# x, y, z = Reals('x y z')
# s = Solver()
# s.add(x > 1, y > 1, x + y > 3, z - x < 10)
# print s.check()
# 
# m = s.model()
# print "x = %s" % m[x]
# 
# print "traversing model..."
# for d in m.decls():
#     print "%s = %s" % (d.name(), m[d])

# x = BitVec('x', 16)
# y = BitVec('y', 16)
# print x + 2
# # Internal representation
# print (x + 2).sexpr()
# 
# # -1 is equal to 65535 for 16-bit integers 
# print simplify(x + y - 1)
# 
# # Creating bit-vector constants
# a = BitVecVal(-1, 16)
# b = BitVecVal(65535, 16)
# print simplify(a == b)
# 
# 
# # Create to bit-vectors of size 32
# x, y = BitVecs('x y', 32)
# 
# solve(x + y == 2, x > 0, y > 0)
# 
# solve(x & y == ~y)  
# 
# solve(x < 0)
# 
# # using unsigned version of < 
# solve(ULT(x, 0))
# 
# # Create to bit-vectors of size 32
# x, y = BitVecs('x y', 32)
# 
# solve(x >> 2 == 3)
# 
# solve(x << 2 == 3)
# 
# solve(x << 2 == 24)

# p, q = Bools('p q')
# demorgan = And(p, q) == Not(Or(Not(p), Not(q)))
# print demorgan
# 
# def prove(f):
#     s = Solver()
#     s.add(Not(f))
#     if s.check() == unsat:
#         print "proved"
#     else:
#         print "failed to prove"
# 
# print "Proving demorgan..."
# prove(demorgan)
# 
# x = BitVec('t', 8)
# print x.sexpr()
# y = Extract(7, 4, x)
# z = Extract(3, 0, x)
# w = Concat(y, z)  
# print y.sexpr()
# print z.sexpr()
# print w.sexpr()
# s = Solver();
# s.add(Not(w == x))
# print s.check()


# x = Int('x')
# y = Real('y')
# print (x + 1).sort()
# print (y + 1).sort()
# print (x >= 2).sort()

# x = Int('x')
# print "is expression: ", is_expr(x)
# n = x + 1
# print "is application:", is_app(n)
# print "decl:          ", n.decl()
# print "num args:      ", n.num_args()
# for i in range(n.num_args()):
#     print "arg(", i, ") ->", n.arg(i)

# x   = Int('x')
# x_d = x.decl()
# print "is_expr(x_d):     ", is_expr(x_d)
# print "is_func_decl(x_d):", is_func_decl(x_d)
# print "x_d.name():       ", x_d.name()
# print "x_d.range():      ", x_d.range()
# print "x_d.arity():      ", x_d.arity()
# # x_d() creates an application with 0 arguments using x_d.
# print "eq(x_d(), x):     ", eq(x_d(), x)
# print "\n"
# # f is a function from (Int, Real) to Bool
# f   = Function('f', IntSort(), RealSort(), BoolSort())
# print "f.name():         ", f.name()
# print "f.range():        ", f.range()
# print "f.arity():        ", f.arity()
# for i in range(f.arity()):
#     print "domain(", i, "): ", f.domain(i)
# # f(x, x) creates an application with 2 arguments using f.
# print f(x, x)
# print eq(f(x, x).decl(), f)


#a = BitVecVal(-1, 16)
#b = BitVecVal(65535, 16)
#print simplify(a + b)

x = Int('x')
y = Int('y')
max = If(x > y, (x, y))
print simplify(max)




