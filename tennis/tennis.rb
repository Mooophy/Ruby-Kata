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
    while score_by!(yield result)
    end

=begin
    loop do
      score_by!(yield result)
      break if @winner != nil
    end
=end
  end

  def score_by!(player)
    if @winner== nil and @scores[player]
      if (0...3) === @scores[player]
        @scores[player] += 1
      elsif duel?
        @scores[player] = :advantage
      elsif @scores[player] == :advantage
        @winner = player
        @scores = nil
      elsif @scores.any? {|_, value| value == :advantage}
        @scores.each {|key, _| @scores[key] = 3}
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

end
