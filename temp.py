# Comment 1
# Comment 2
# Comment 3
# Comment 4


import pathlib
from collections import Counter

c = Counter("abcedadfcdfasdf")
c.most_common(10)


p = pathlib.Path()

def func(a: int):
    return a * 2
