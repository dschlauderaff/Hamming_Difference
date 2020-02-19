require "test/unit"
require_relative './hamming'

class HammingTest < Test::Unit::TestCase
  def test_calculate
    hamming_calculator = HammingCalculator.new()
    assert_equal 0, hamming_calculator.calculate("abc", "abc"), "Calculator should return 0 for two identical strings"
    assert_equal 3, hamming_calculator.calculate("GAGCCTACTAACGGGAT", "GAGCCTGCTAACAGGATT"), "Calculator should return 3 for the two given strings"
  end
end