#1
x = 2
sum = 0.0

(1..10).each do |n|
  coefficient = Rational(n, n + 1) # Обчислюємо коефіцієнт
  term = coefficient * (x**n)     # Обчислюємо кожен доданок
  sum += term                      # Додаємо доданок до суми
end

puts "Значення виразу 1: #{sum}"

#2
n = 8
sum = 0.0

(0..n).each do |i|
  term = 1.0 / (3**i) # Обчислюємо кожен доданок
  sum += term         # Додаємо доданок до суми
end

puts "Значення виразу 2: #{sum}"
