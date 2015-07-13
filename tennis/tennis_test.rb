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
    tennis = Tennis.new(:Foo, :Bar)
    tennis.play! { :Bar }
    assert_equal(:Bar, tennis.winner)
  end

  it "can play , case 2 for array" do
    tennis = Tennis.new(:F, :B)
    arr = [:F, :B, :F, :B, :F, :B, :F, :B, :F, :B]
    tennis.play! { arr.pop or break }
    assert_equal(nil, tennis.winner)
    2.times {tennis.score_by!(:B)}
    assert_equal(:B, tennis.winner)
  end

  it "can play, case 3 with int" do
    tennis = Tennis.new(42,99)
    tennis.play! { 42 }
    assert_equal(42, tennis.winner)
  end 

end
