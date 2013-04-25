def pitagorean(x)
    Enumerator.new do |enum|
        (1..x).each do |a|
            (a+1..x).each do |b|
                (b+1..x).each do |c|
                    if a*a + b*b == c*c
                        enum.yield [a,b,c]
                    end
                end
            end
        end
    end
end

def solve(x)
    for a,b,c in pitagorean(x)
        if a+b+c == x
            return a*b*c
        end
    end
end


require 'test/unit'
class TestSolve < Test::Unit::TestCase
    def test_solve
        assert solve(1000) == 31875000
    end
end
