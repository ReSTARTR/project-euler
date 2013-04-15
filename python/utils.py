# -*- coding: utf-8 -*-

def fib(x, first=[1, 2]):
    if x < 2:
        return first[x]
    return fib(x - 1) + fib(x - 2)


def is_prime(x):
    u'''
    #"フェルマーの小定理"
    #a^(p-1) mod p の答えが1以外ならpは合成数である
    #ただし、aとpが素の関係（最大公約数が1)であること
    '''
    if x == 2: return True
    if x < 2 or (x&1 == 0): return False
    return pow(2, x - 1, x) == 1


def gcd(a, b):
    u'''最大公約数を求める(ユークリッドの互除法)'''
    if b == 0:
        return a
    return gcd(b, a % b)

#再帰しないパターン
#def gcd(a, b):
#    tmp = 0
#    while b > 0:
#        tmp = b
#        b = a % b
#        a = tmp
#    return a


def lcm(a, b):
    u'''最小公倍数を求める'''
    return a / gcd(a, b) * b



