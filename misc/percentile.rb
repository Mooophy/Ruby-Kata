class BoxPlotData
  attr_reader :min, :max

  def initialize data, min, max
    @sorted = data.sort
    @min = min.to_f
    @max = max.to_f
    self.freeze
  end

  def smallest
    percentile 0.00
  end

  def lower_quartile
    percentile 0.25
  end

  def median
    percentile 0.50
  end

  def upper_quartile
    percentile 0.75
  end

  def greatest
    percentile 1.00
  end

  #
  # Reference:
  # http://stackoverflow.com/questions/11784843/calculate-95th-percentile-in-ruby
  #
  def percentile percentage
    return @sorted.last if percentage >= 1.0
    k = (percentage * (@sorted.size - 1) + 1).floor - 1
    f = (percentage * (@sorted.size - 1) + 1).modulo(1)
    @sorted[k] + f * (@sorted[k + 1] - @sorted[k])
  end
end
