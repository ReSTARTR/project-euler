class Fib
    def initialize()
        @cache = {}
    end

    def at(x, head=[1, 2])
        unless @cache.include?(x)
            if x < head.length
                @cache[x] = head[x]
            else
                @cache[x] = at(x - 1) + at(x - 2)
            end
        end
        @cache[x]
    end
end


def solve(n, limit=4000000)
    fib = Fib.new
    (0...n).reduce do |sum, i|
        v = fib.at(i)
        if v < limit && v % 2 == 0
            sum + v
        else
            sum
        end
    end
end


require 'test/unit'
class TestSolve < Test::Unit::TestCase
    def test_10
        assert solve(10) == 44
    end

    def test_1000
        assert solve(1000) == 4613732
    end
end
