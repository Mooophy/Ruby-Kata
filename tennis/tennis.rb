class Tennis

  def initialize(home, away)
    @home = home
    @away = away
    @scores = {home => 0, away = 0}
    @winner = nil
  end

  def score_by!(player)
    if @scores[player]
      if (0..2) === @scores[player]
        @scores[player] += 1
      elsif @duel?
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
#    @winner ? @winner.to_s : ""
  end

  def duel?
    result = true
    @score_table.each_value {|value| result = false if value != 3}
    result
  end
end
