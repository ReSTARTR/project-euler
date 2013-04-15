from itertools import ifilter

def solve(N, d=[3, 5]):
    def f(x):
        return any(ifilter(lambda dd: x and x % dd == 0, d))

    return sum([i for i in range(N) if f(i)])

if __name__ == '__main__':
    assert solve(10) == 23

    assert solve(1000) == 233168
