
def solve1(x):
    return sum(map(lambda a: pow(a, 2), range(x + 1)))


def solve2(x):
    return pow(sum(range(x + 1)), 2)


if __name__ == '__main__':
    assert solve1(10) == 385
    assert solve2(10) == 3025
    assert solve2(10) - solve1(10) == 2640

    assert solve2(100) - solve1(100) == 25164150
