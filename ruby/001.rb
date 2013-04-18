
def solve(n, divs)
    (0...n).reduce do |sum, i|
        if divs.any?{|x| i>0 && i % x == 0}:
            sum + i
        else
            sum
        end
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
