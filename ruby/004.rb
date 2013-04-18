def solve(mul=2)
    max = 0

    rng = (1...10**mul).to_a
    rng.product(rng) do |i, j|
       v = i*j
       if "#{i*j}".reverse.to_i == v
           if v > max
               max = v
           end
       end
    end
    max
end


require 'test/unit'
class TestSolve < Test::Unit::TestCase
    def test_nums
        assert solve(2) == 9009
        assert solve(3) == 906609
    end
end
