#write your code here
def add(a,b)
    a + b
end
def subtract(a,b)
    a - b
end
def sum(array)
    array.inject(0, :+)
end
def multiply(array)
    array.inject(1, :*)
end
def power(a,b)
    a ** b
end
def factorial(n)
    return 1 if n == 0
    (1..n).inject { |product, num| product * num }
  end
  
# def factorial(n)
#     if n == 0
#         1
#     else
#         (1..n).inject(:*)
#     end
# end