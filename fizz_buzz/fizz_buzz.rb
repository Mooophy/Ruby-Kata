class FizzBuzz
  def generate
    ret = ""
    1.upto(100){ |n| ret += (n % 15 == 0 ? "FizzBuzz" : n % 5 == 0 ? "Buzz" : n % 3 == 0  ? "Fizz" : "#{n}") + "\n" }
    ret
  end
end
