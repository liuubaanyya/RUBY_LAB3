A = false
B = false
C = true
P = true
Q = true
X = 1
Y = 16
Z = -40
n = -2
m = 1

# a) ㄱ(A⋁B)⋀(A⋁ㄱB)
result_a = (! (A || B)) && (A || !B)
puts "a) Результат: #{result_a}"

# b) (Z≠Y)≤(6≥Y)⋀A⋁B⋀C⋀X≥1.5
result_b = (Z != Y) && (6 >= Y) && (A || B || C) && (X >= 1.5)
puts "b) Результат: #{result_b}"

# c) (8-X*2≤Z)⋀(X^2>=Y^2)⋁(Z≥15)
result_c = ((8 - X * 2 <= Z) && (X**2 >= Y**2)) || (Z >= 15)
puts "c) Результат: #{result_c}"

# d) X>0⋀Y<0⋁Z≥(X*Y+(-Y/X))+(-Z)*(-2)
result_d = (X > 0) && (Y < 0) || (Z >= (X * Y + (-Y / X)) + (-Z) * (-2))
puts "d) Результат: #{result_d}"

# g) ㄱ(A⋁B)⋀ㄱ(C⋁(ㄱA⋁B)))
result_g = (! (A || B)) && (! (C || (!A || B)))
puts "g) Результат: #{result_g}"

# h) X^2+Y^2≥1⋀X≥0⋀Y≥0
result_h = (X**2 + Y**2 >= 1) && (X >= 0) && (Y >= 0)
puts "h) Результат: #{result_h}"

# i) (A⋀(C⋀B<>B⋁A)⋁C)⋁B
result_i = (A && ((C && (B != B || A)) || C)) || B
puts "i) Результат: #{result_i}"

# Визначення значення логічного виразу
result = ((P && Q) == (!(P || Q))) && ((m**2 + n**2) < 4) && ((m + n) < 1)
puts "Результат2: #{result}"