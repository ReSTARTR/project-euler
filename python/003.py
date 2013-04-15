
prime_tables = []

def prime_min(x):
    if x in prime_tables:
        return x

    for i in xrange(2, x + 1):
        if x % i == 0:
            prime_tables.append(i)
            return i

def prime(x, primes):
    if x > 0:
        p = prime_min(x)
        if p:
            primes.add(p)
            return prime(x / p, primes)
    return primes


def find(x):
    return prime(x, set([]))


if __name__ == '__main__':
    assert prime_min(2) == 2
    assert prime_min(3) == 3
    assert prime_min(10) == 2
    assert find(10) == set([2, 5])

    assert find(13195) == set([5, 7, 13, 29])
