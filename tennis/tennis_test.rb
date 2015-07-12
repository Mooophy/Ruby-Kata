require 'minitest/autorun'
require './tennis'

describe Tennis do

  it "can be newed with two players id" do
    tennis = Tennis.new(:Foo, :Bar)
  end

  it "can get a score by a player" do
    tennis = Tennis.new(:Foo, :Bar)
    assert_equal("0 : 0"  , tennis.result)
    tennis.score_by!(:Foo)
    assert_equal("15 : 0" , tennis.result)
    tennis.score_by!(:Foo)
    assert_equal("30 : 0" , tennis.result)
    tennis.score_by!(:Bar)
    assert_equal("30 : 15", tennis.result)
    assert_equal(false    , tennis.score_by!(:someone)) 
    assert_equal("30 : 15", tennis.result)
    [:Foo, :Bar, :Bar].each { |player| tennis.score_by!(player) }
    assert_equal("Duel!", tennis.result)
    tennis.score_by!(:Foo)
    assert_equal("advantage : 40", tennis.result)
    tennis.score_by!(:Bar)
    assert_equal("Duel!", tennis.result)
    2.times { tennis.score_by!(:Bar) }
    assert_equal("Bar won!", tennis.result)  
  end

  it "can play, case 1" do
    puts :test_case1
    tennis = Tennis.new(:Foo, :Bar)
    tennis.play! do |result| 
      puts result
      :Bar
    end
    assert_equal(:Bar, tennis.winner)
  end

  it "can play , case 2" do
    puts :test_case2
    tennis = Tennis.new(:F, :B)
    
    arr = [:F, :B, :F, :B, :F, :B, :F, :B, :F, :B]
    i = 0
    tennis.play! do |result|
      break if i == arr.length
      puts result
      arr[i += 1]
    end
    assert_equal(nil, tennis.winner)
        
    2.times {tennis.score_by!(:B)}
    assert_equal(:B, tennis.winner)
  end

end
