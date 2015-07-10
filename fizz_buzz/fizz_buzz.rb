class FizzBuzz
  def generate
    ret = ""
    1.upto(100){ |n| ret += (n % 15 == 0 ? "FizzBuzz" : n % 5 == 0 ? "Buzz" : n % 3 == 0  ? "Fizz" : "#{n}") + "\n" }
    ret
  end
end
=begin
    print = String.new
    for i in 1..100
      fizz = (i%3 == 0)
      buzz = (i%5 == 0)
      if fizz && buzz
        print += "FizzBuzz\n"
      elsif fizz
        print += "Fizz\n"
      elsif buzz
        print += "Buzz\n"
      else
        print += "#{i}\n"
      end
    end
    print

  end
end
=end
