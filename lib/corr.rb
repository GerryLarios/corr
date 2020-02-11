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
    raise 'The variable lengths are not the same.' if vector_x.length != vector_y.length
    sum_cov(vector_x, vector_y) / vector_x.length
  end

  private

  def self.sum_cov(vector_x, vector_y)
    n = vector_x.length
    mean_x = mean(vector_x)
    mean_y = mean(vector_y)
    (0...n).reduce(0.0) { |sum, i| sum + ((vector_x[i] - mean_x) * (vector_y[i] - mean_y))} 
  end
end
