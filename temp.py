# Comment 1
# Comment 2
# Comment 3
# Comment 4


import pathlib
from collections import Counter


def func(a: int = 1) -> int:
    "A func"
    return a * 2


c = Counter("abcedadfcdfasdf")
c.most_common(10)

p = pathlib.Path()
