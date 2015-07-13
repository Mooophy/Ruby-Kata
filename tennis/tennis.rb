class Tennis
  attr_reader :winner 

  def initialize(home, away)
    @home   = home
    @away   = away
    @scores = { home => 0, away => 0 }
    @winner = nil
  end
  
  def play!
    while @winner == nil
      score_by! yield
    end
  end

  def score_by! player
    return false if @winner
    return false unless @scores.keys.include? player
    if duel?
      @scores[player] = :advantage
    elsif @scores[other player] == :advantage
      @scores[@home] = 3
      @scores[@away] = 3
    elsif @scores[player] == :advantage or @scores[player] == 3
      @winner = player
    else
      @scores[player] += 1
    end 
    true
  end

  def result
    return "#{ @winner } won!" if @winner
    return "Duel!" if duel?
    "#{ points_by @home } : #{ points_by @away }"
  end
  
  private
  def points_by(player)
    score = @scores[player]
    return score == 3 ? 40 : score * 15 if score.is_a? Numeric
    score
  end

  def other player
    (player == @home) ? @away : @home
  end

  def duel?
    @scores[@home] == 3 and @scores[@away] == 3
  end
end
