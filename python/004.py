
def nums(mul=2):
    start = pow(10, mul) - 1
    stop = start - pow(10, mul - 1)
    rng = xrange(start, stop, -1)
    for i in rng:
        for j in rng:
            t = "%d" % (i * j)
            if t == t[::-1]:
                yield i * j

if __name__ == '__main__':
    assert max(nums(2)) == 9009

    assert max(nums(3)) == 906609
