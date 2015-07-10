class Player
	
	def initialize(name)
		@name = name
		@score = 0 	#in 0,1,2,3,4
		@advantage = false
	end

	def toggle_advantage!
		@advantage ^= true
	end	

end

class Tennis
=begin
	private
	def initialize 
		@home = 0
		@away = 0
		@score_table = { 0 => 0, 1 => 15, 2 => 30, 3 => 40, 4 => nil}
		@score_table.freeze
	end

	def score(player)
		@score_table[player] ? @score_table[player] : 40;
	end

	public
	def is_duel?
		@home == 3 and @away == 3
	end

	def current_score
		"#{ score(@home) },#{ score(@away) }"
	end
=end
=begin
	def initialize
		@player_1_score = 0
		@player_2_score = 0
	end
	def current_score
		return "#{15 * @player_1_score},#{15 * @player_2_score}"
	end
	def player_1_score
		@player_1_score += 1
	end
	def player_2_score
		@player_2_score += 1
	end
=end

end
