# -*- coding: utf-8 -*-
from utils import gcd, lcm

def solve(r):
    ans = 1
    for i in range(2, r + 1):
        print ans,
        ans = lcm(ans, i)
        print i, ans
    return ans


if __name__ == '__main__':
    assert solve(10) == 2520
    assert solve(20) == 232792560
    #assert solve(30) == 2329089562800
