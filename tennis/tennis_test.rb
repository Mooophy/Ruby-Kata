require 'minitest/autorun'
require './tennis'
describe Player do
end

=begin
describe Tennis do
	it "start with 0 score" do
		tennis = Tennis.new
		assert_equal("0,0", tennis.current_score)
	end
=end

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

=end
