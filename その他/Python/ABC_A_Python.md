ABCProblems A

## https://atcoder.jp/contests/abc173/tasks/abc173_a

#### 最速

```python
N = int(input())

print(-N%1000)
```

#### 最遅

```python
N = int(input())

print(-N % 1000)
```

## https://atcoder.jp/contests/abc172/tasks/abc172_a

#### 最速

```python
a = int(input())

print(a + a*a + a*a*a)

```

#### 最遅

```python
def main():
    import sys
    a=int(sys.stdin.readline())
    print(a+a**2+a**3)

main()

```

## https://atcoder.jp/contests/abc171/tasks/abc171_a

#### 最速

```python
a = input()

if a == a.upper():
	print('A')
else:
	print('a')

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
    a = kwargs["a"]
    res = "a"

    if a.isupper():
        res = "A"

    return res

if __name__ == "__main__":
    kwargs = {}

    cin = input().split()
    kwargs["a"] = cin[0]

    cout = main(kwargs)
    print(cout)

```

## https://atcoder.jp/contests/abc170/tasks/abc170_a

#### 最速

```python
x = list(map(int, input().split()))
for i in range(5):
    if x[i] != i + 1:
        print(i + 1)
        exit()

```

#### 最遅

```python
import numpy as np
import scipy.sparse as sps
import scipy.misc as spm
import collections as col
import functools as func
import itertools as ite
import fractions as frac
import math as ma
import cmath as cma
import copy as cp
import sys
def sinput(): return sys.stdin.readline().strip()
def iinput(): return int(sinput())
def imap(): return map(int, sinput().split())
def fmap(): return map(float, sinput().split())
def iarr(n=0):
    if n: return [0 for _ in range(n)]
    else: return list(imap())
def farr(): return list(fmap())
def sarr(n=0):
    if n: return ["" for _ in range(n)]
    else: return sinput().split()
def adj(n): return [[] for _ in range(n)]
sys.setrecursionlimit(10**7)
MOD = 10**9 + 7; EPS = sys.float_info.epsilon
PI = np.pi; EXP = np.e; INF = np.inf

a = iarr()
for i,num in enumerate(a):
    if num==0: print(i+1); break

```
