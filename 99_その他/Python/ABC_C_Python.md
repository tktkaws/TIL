## ABCProblems C

## 173

#### 最速

```python
import itertools
H,W,K=map(int,input().split())

C=[]

for i in range(H):
  C.append(input())

ans=0
for i in range(H+1):
  for j in range(W+1):
    for n in itertools.combinations(list(range(H)),i):
      for m in itertools.combinations(list(range(W)),j):
        count = 0
        for a in n:
          for b in m:
            if(C[a][b]=="#"):count+=1
        if(count == K):
          ans += 1
print(ans)

```

#### 最遅

```python
h, w, k = map(int,input().split())
import copy

def generate_n_bit(n):
    bins= []
    for i in range(2**n):
        bins.append(list(str(format(i,'b').zfill(n))))

    return bins

h_all = generate_n_bit(h)
w_all = generate_n_bit(w)
ans = 0
n = 23
extra = 1

for i in range(1,n+1):
    extra = extra * i


field = [list(input()) for i in range(h)]

for i_l in h_all:
    for j_l in w_all:
        c  = 0
        fields = copy.deepcopy(field)


        for i_i, i in enumerate(i_l):
            for j_i, j in enumerate(j_l):
                n = 23
                extra = 1

                for xx in range(1,n+1):
                    extra = extra * xx
                if i == '1':
                    for a in range(w):
                        fields[i_i][a] = 'r'

                if j == '1':
                    for b in range(h):

                        fields[b][j_i] = 'r'


        for q in range(h):
            for e in range(w):
                if fields[q][e] == '#':
                    c += 1

        if c == k:
            ans += 1

n = 23
fact = 1

for i in range(1,n+1):
    fact = fact * i

print(ans)

```

## 172

#### 最速

```python
def main():
    from itertools import chain
    N, M, K = map(int, input().split())

    A = map(int, input().split())
    B = list(map(int, input().split()))

    answer = 0

    sum_b = sum(B)
    idx_b = M
    remain = K

    for i, a in enumerate(chain([0], A)):
        remain -= a
        if remain < 0:
            break

        while sum_b > remain and idx_b >= 0:
            idx_b -= 1
            b = B[idx_b]
            sum_b -= b

        i += idx_b
        answer = i if answer < i else answer

    print(answer)


if __name__ == "__main__":
    main()

```

#### 最遅

```python
import numpy as np
N, M, K = map(int, input().split())
A = np.cumsum([0] + list(map(int, input().split())))
B = np.cumsum([0] + list(map(int, input().split())))

def nibu(data, value):
  left = 0
  right = len(data) - 1
  while right - left > 1:
    mid = (left + right)//2
    if data[mid] == value:
      return mid
    elif value < data[mid]:
      right = mid
    else:
      left = mid
  if value >= data[right]:
    return right
  else:
    return left

ans = 0
for i in range(N+1):
  sa = K - A[i]
  if sa < 0:
    break
  j = nibu(B, sa)
  ans = max(ans,i+j)
print(ans)

```

## 171

#### 最速

```python
N = int(input())
Ans = ""
while N>0:
    s = N%26
    if s == 0:
        s = 26
    N = int((N - s)/26)
    Ans = chr(ord("a")+s-1)+Ans

print(Ans)

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
    n = kwargs["n"]
    res = num2alpha(n)

    return res

def num2alpha(num):
    if num<=26:
        return chr(96+num)
    elif num%26==0:
        return num2alpha(num//26-1)+chr(122)
    else:
        return num2alpha(num//26)+chr(96+num%26)

if __name__ == "__main__":
    kwargs = {}

    cin = input().split()
    kwargs["n"] = [int(i) for i in cin][0]

    cout = main(kwargs)
    print(cout)

```

## 170

#### 最速

```python
import sys
readline=sys.stdin.readline

X,N=map(int,readline().split())
P=set(list(map(int,readline().split())))

x = X
while x in P:
  x -= 1

minX = x

x = X
while x in P:
  x += 1
maxX = x

if abs(minX - X) <= abs(maxX - X):
  print(minX)
else:
  print(maxX)

```

#### 最遅

```python
x,n = map(int,input().split())
if n == 0:
    print(x)
    exit()
p = list(map(int,input().split()))
p = sorted(p)
ans = 100000
for i in range(-10000,10000):
    ok = True
    for j in range(n):
        if i == p[j]: ok = False
    if ok:
        if(abs(ans - x) > abs(x - i)):
            ans = i
print(ans)

```

## 169

#### 最速

```python
a,b=input().split()
a=int(a)
b=list(b)
b=[int(b[0]),int(b[2]),int(b[3])]
c=(a*b[0]*100+a*b[1]*10+a*b[2])//100
print(c)

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
def barr(n): return [False for _ in range(n)]
sys.setrecursionlimit(10**7)
MOD = 10**9 + 7; EPS = sys.float_info.epsilon
PI = np.pi; EXP = np.e; INF = np.inf

import decimal as dec

a,b = sarr()
a,b = dec.Decimal(a), dec.Decimal(b)
ans = int(a*b)
print(ans)

```

## 168

#### 最速

```python
import math

A,B,H,M=map(int, input().split())

sh=math.pi*(H+M/60)/6
sm=math.pi*M/30

s=abs(sh-sm)

C=math.sqrt(A**2+B**2-2*A*B*math.cos(s))

print(C)

```

#### 最遅

```python
a,b,h,m=map(int,input().split())
import numpy as np
theta = ((h+m/60)/12 - m/60)*2*np.pi
c=a**2+b**2-2*a*b*np.cos(theta)
print(np.sqrt(c))

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```

## https://atcoder.jp/contests/abc173/tas

#### 最速

```python

```

#### 最遅

```python

```
