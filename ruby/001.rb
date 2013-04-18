
def solve(n, divs)
    (0...n).reduce do |sum, i|
        sum += divs.any?{|x| i % x == 0} ? i : 0
    end
end

require 'test/unit'
class TestSolve < Test::Unit::TestCase
    def test_10
        assert solve(10, [3, 5]) == 23
    end

    def test_1000
        assert solve(1000, [3, 5]) == 233168
    end
end
