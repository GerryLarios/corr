require "corr/version"

module Corr
  def self.correlation(vector_x, vector_y)
    covariance(vector_x, vector_y) / (standard_deviation(vector_x) * standard_deviation(vector_y))
  end

  def self.sum(vector)
    vector.reduce(0.0) { |result, value| result + value }
  end

  def self.mean(vector)
    sum(vector) / vector.length
  end

  def self.standard_deviation(vector)
    vector_mean = mean(vector)
    sum_result = vector.reduce(0.0) {|result, value| result + (value - vector_mean)**2}
    Math.sqrt((1.0 / vector.length) * sum_result)
  end

  def self.covariance(vector_x, vector_y)
    if vector_x.length == vector_y.length
      return sum_cov(vector_x, vector_y) / vector_x.length
    else
      raise 'The variable lengths are not the same.'
    end
  end

  private

  def self.sum_cov(vector_x, vector_y)
    n = vector_x.length
    mean_x = mean(vector_x)
    mean_y = mean(vector_y)
    result = 0.0
    for i in 0...n do
      result += (vector_x[i] - mean_x) * (vector_y[i] - mean_y)
    end
    result
  end
end
