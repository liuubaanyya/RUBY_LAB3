
def calculate_case(x)
  # Визначення значення змінної y в залежності від значення x в межах кожного з варіантів
  case x
  when -4..0
    result = ((x - 2).abs / ((x**2) * Math.cos(x)))**(1.0/7.0)
    category = "a"
  when 1..12
    result = 1 / ((Math.tan(x + 1 / Math.exp(x))) / Math.sin(x)**2)**(1/3.5)
    category = "b"
  else
    # Коли x не попадає в жоден з варіантів (-4..0 та 1..12), обчислюємо за "c"
    result = 1 / (1 + (x / (1 + (x / (1 + x)))))
    category = "c"
  end
  return result, category
end

x = 1
result, category = calculate_case(x)
print "Category: #{category}, Result: #{result}"
