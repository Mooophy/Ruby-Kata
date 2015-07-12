class Tennis

  attr_reader :winner 

  def self.convert(score)
    return score == 3 ? 40 : score * 15 if score.is_a? Numeric
    score
  end

  def initialize(home, away)
    @home = home
    @away = away
    @scores = { home => 0, away => 0 }
    @winner = nil
  end
  
  def play!
    while @winner == nil
      score_by!(yield result)
    end
  end

  def score_by!(player)
    if @winner == nil and @scores[player]
      another = player == @home ? @away : @home
      if duel?
        @scores[player] = :advantage
      elsif @scores[another] == :advantage
        @scores[@home] = 3
        @scores[@away] = 3
      elsif @scores[player] == :advantage or @scores[player] == 3
        @winner = player
      else
        @scores[player] += 1
#      true
      end 
      true
    else
      false  
    end
  end

  def result
    return "#{@winner} won!" if @winner
    duel? ? "Duel!" : "#{self.class.convert(@scores[@home])} : #{self.class.convert(@scores[@away])}"
  end
  
  private
  def duel?
    @scores[@home] == 3 and @scores[@away] == 3
  end

  def another(player)
    player == @home ? @away  : @home
  end  

end
