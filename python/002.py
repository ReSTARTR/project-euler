from itertools import ifilter

cache = {}
def fib(x, first=[1, 2]):
    if not x in cache:
        if x < 2:
            cache[x] = first[x]
        else:
            cache[x] = fib(x - 1) + fib(x - 2)
    return cache[x]


def solve(N, limit=4000000):
    cache = {}
    c = 0
    f = lambda x: x < limit and x % 2 == 0
    return sum(ifilter(f, (fib(i) for i in xrange(0, N))))


if __name__ == '__main__':
    cache = {}
    assert [fib(i) for i in range(10)] == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    assert solve(10) == sum([2, 8, 34])

    assert solve(1000, limit=4000000) == 4613732
