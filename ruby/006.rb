def solve1(x)
    (0..x).reduce(0){|sum, a| sum+=a**2}
end

def solve2(x)
    (0..x).reduce(:+) ** 2
end

def solve(x)
    solve2(x) - solve1(x)
end

require 'test/unit'
class TestSolve < Test::Unit::TestCase
    def test_solve1
        assert solve1(10) == 385
    end

    def test_solve2
        assert solve2(10) == 3025
    end

    def test_solve
        assert solve(10) == 2640
        assert solve(100) == 25164150
    end
end
