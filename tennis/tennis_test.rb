require 'minitest/autorun'
require './tennis'

describe Tennis do
	it "has class method that converts score to points" do
		assert_equal(0 , Tennis.convert(0))
    assert_equal(15, Tennis.convert(1))
    assert_equal(30, Tennis.convert(2))
    assert_equal(40, Tennis.convert(3))   
	end
end

=begin

	it "player_1 can get point" do
		tennis = Tennis.new()
		tennis.player_1_score()
		assert_equal("15,0", tennis.current_score)
	end
	it "player_2 can get point" do
		tennis = Tennis.new()
		tennis.player_2_score()
		assert_equal("0,15", tennis.current_score)
	end
	it "player_1 can get point twice" do
		tennis = Tennis.new()
		tennis.player_1_score()
		tennis.player_1_score()
		assert_equal("30,0", tennis.current_score)
	end
	it "player_2 can get point twice" do
		tennis = Tennis.new()
		tennis.player_2_score()
		tennis.player_2_score()
		assert_equal("0,30", tennis.current_score)
	end
	it "player_1 can get point threetimes" do
		tennis = Tennis.new()
		3.times {tennis.player_1_score}
		assert_equal("40,0", tennis.current_score)
	end

=end

