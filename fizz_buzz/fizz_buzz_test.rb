require 'minitest/autorun'       # load testing framework
require_relative 'fizz_buzz.rb'  # load fizz_buzz.rb file

describe FizzBuzz do
  # basic guide
  # 1. run this test and see it fails
  # 2. check fizz_buzz_output.txt to see expected string
  # 3. create a method 'generate' to FizzBuzz class in fizz_buzz.rb
  #    and build the expected string
  # 4. see the test passes
  it "should print 1 to 100 applying fizz buzz" do
    fizz_buzz = FizzBuzz.new
    File.open("fizz_buzz_output.txt") do |file|
      assert_equal(file.read, fizz_buzz.generate)
    end
  end
end
