RSpec.describe Corr do
  it "has a version number" do
    expect(Corr::VERSION).not_to be nil
  end
end

RSpec.describe Corr::Formulas do
  it "does calculate sum of vector" do
    x = [43, 21, 25, 42, 57, 59]
    expect(Corr::Formulas.sum(x)).to eq(247)
  end

  it "does calculate the mean" do
    x = [1, 3, 2, 5, 8, 7, 12, 2, 4]
    expect(Corr::Formulas.mean(x)).to eq(4.888888888888889)
  end

  it "does calculate standard deviation" do
    x = [9, 2, 5, 4, 12, 7, 8, 11, 9, 3, 7, 4, 12, 5, 4, 10, 9, 6, 9, 4]
    expect(Corr::Formulas.standard_deviation(x)).to eq(2.9832867780352594)
  end

  it "does calculate covariance" do
    x = [2.1, 2.5, 3.6, 4.0]
    y = [8, 10, 12, 14]
    expect(Corr::Formulas.covariance(x, y)).to eq(1.7)
  end

  it "does calculate correlation" do
    x = [43, 21, 25, 42, 57, 59] # Age
    y = [99, 65, 79, 75, 87, 81] # Glucose level
    expect(Corr::Formulas.correlation(x, y)).to eq(0.5298089018901745)
  end
end
