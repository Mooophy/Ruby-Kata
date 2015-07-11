class Tennis

  def self.convert(i)
    i == 3 ? 40 : i * 15
  end

  def initialize(home, away)
    @home = home
    @away = away
    @scores = { home => 0, away => 0 }
    @winner = nil
  end
=begin
  def play!
    yield "Please enter two players name"
    loop do
      @score_by(yield @result)
    break unless @winner == nil
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
    return "#{@winner} won !"if @winner
    duel? ? "Duel!" : "#{self.class.convert(@scores[@home])} : #{self.class.convert(@scores[@away])}"
  end
  
  private
  def duel?
    @scores[@home] == 3 and @scores[@away] == 3
  end
=end

end
