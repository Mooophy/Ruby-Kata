class Tennis

  def initialize(player1, player2)
    @score_table = {player1 => 0, player2 => 0}
  end

  def score(player)
    if @score_table[player]
      if (0..2).include? @score_table[player]
        @score_table[player] += 1
      elsif @duel?
        @score_table[player] = "advantage"
        
        
      return true    
    else
      false   
    end
  end

  def duel?
    result = true
    @score_table.each_value {|value| result = false if value != 3}
    result
  end
end
