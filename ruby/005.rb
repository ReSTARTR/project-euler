def gcd(x, y)
    if y == 0
        x
    else
        gcd(y, x % y)
    end
end


def lcm(x, y)
    x / gcd(x, y) * y
end


def solve(r)
    ans = 1
    for i in 2..r
        ans = lcm(ans, i)
    end
    ans
end


require 'test/unit'
class TestSolve < Test::Unit::TestCase
    def test_nums
        assert solve(10) == 2520
        assert solve(20) == 232792560
        assert solve(30) == 2329089562800
    end
end
