ABCProblems B

## https://atcoder.jp/contests/abc173/tasks/abc173_a

#### 最速

```python
c=open(0).read().count
for s in'AC','WA','TLE','RE':print(s,'x',c(s))

```

#### 最遅

```python
import numpy as np
import math
import scipy as sp
import queue
import collections

MOD = 10 ** 9 + 7
INF = 10 ** 9

def main(kwargs):
    S = kwargs["S"]
    cnt = collections.Counter(S)
    res = "AC x {}\nWA x {}\nTLE x {}\nRE x {}".format(cnt["AC"], cnt["WA"], cnt["TLE"], cnt["RE"])
    return res

if __name__ == "__main__":
    kwargs = {}

    cin = input().split()
    kwargs["n"] = [int(i) for i in cin][0]

    kwargs["S"] = []
    for i in range(kwargs["n"]):
        cin = input().split()
        s = cin[0]
        kwargs["S"].append(s)

    cout = main(kwargs)
    print(cout)

```
