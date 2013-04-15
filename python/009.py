# -*- coding: utf-8 -*-

def pitagorean(x):
    for a in range(1, x+1):
        for b in range(a+1, x+1):
            for c in range(b+1, x+1):
                if a*a + b*b == c*c:
                    yield (a, b, c)

def solve(x):
    l = []
    for a,b,c in pitagorean(x):
        if a + b + c == x:
            return a * b * c

if __name__ == '__main__':
    assert solve(1000) == 31875000
