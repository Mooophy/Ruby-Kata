class Tennis

  def initialize(home, away)
    @home = home
    @away = away
    @scores = { home => 0, away = 0 }
    @winner = nil
  end

  def score_by!(player)
    if @scores[player]
      if (0...3) === @scores[player]
        @scores[player] += 1
      elsif duel?
        @scores[player] = :advantage
      elsif @scores[player] == :advantage
        @winner = player
        @scores = nil
      elsif @scores.any? {|key, value| value == :advantage}
        @scores.each_value {|value| value = 3}
      end
      true    
    else
      false   
    end
  end

  def result
    return @winner.to_s if @winner
    duel? ? "Duel!" : "#{convert(@scores[@home])} : #{convert(@scores[@away])}"
  end
  
  private
  def duel?
    @scores[@home] == 3 and @scores[@away] == 3
  end

  def convert(score)
    score == 3 ? 40 : score * 15
  end

end
