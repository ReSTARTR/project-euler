def prime_factors(x)
    Enumerator.new do |g|
        table = []
        (2...x).each do |i|
            if table.include?(i)
                g.yield i
            elsif x % i == 0
                g.yield i
                table.push(i)
                x = x / i
            end
        end
    end
end


def primes(x)
    prime_factors(x).each.to_a
end


def solve(x)
    return primes(x).max
end


require 'test/unit'
class TestSolve < Test::Unit::TestCase
    def test_prime_factors
        assert prime_factors(10).to_a == [2, 5]
        assert prime_factors(13195).to_a == [5, 7, 13, 29]
    end

    def test_primes
        assert primes(10) == [2, 5]
        assert primes(13195) == [5, 7, 13, 29]
    end

    def test_solve
        assert solve(600851475143) == 6857
    end
end
