# 1
def task_1
  res = 0
  factorial = 2

  # Цикл від 2 до 10
  (2..10).each { |n|
    # Обчислюємо кожен доданок та додаємо до суми
    res += ((factorial / (n - 1)) / (factorial * (n + 1))) ** (n * (n + 1))
    factorial *= (n + 1)
  }

  res
end

# 2
def task_2(x)
  res = 0
  factorial = 1

  # Цикл від 0 до 10
  (0..10).each{ |n|
    # Обчислюємо кожен доданок та додаємо до суми
    res += (x.to_f ** n) / factorial
    factorial *= (n + 1)
  }

  res
end

# 3
def task_3
  res = 0
  factorials = [6, 1, 6, 1]

  # Цикл від 1 до 10
  (1..10).each{ |n|
    # Обчислюємо кожен доданок та додаємо до суми
    res += (factorials[0] * factorials[1]) / (factorials[2] * (3 ** (2 * n)) * factorials[3])

    # Оновлюємо значення факторіалів
    factorials[0] *= (4 * n) * (4 * n + 1) * (4 * n + 2) * (4 * n + 3)
    factorials[1] *= (2 * n) * (2 * n + 1)
    factorials[2] *= (3 * n + 1) * (3 * n + 2) * (3 * n + 3)
    factorials[3] *= n
  }

  res
end

# Виведення результатів
puts "Завдання 1: #{task_1}"
puts "Завдання 2: #{Math.exp(1)} #{task_2(1)}"
puts "Завдання 3: #{task_3}"
