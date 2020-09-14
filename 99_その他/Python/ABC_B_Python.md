## ABCProblems B

## 173

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

## 172

#### 最速

```python
def main():
    import sys
    S=sys.stdin.readline()
    T=sys.stdin.readline()
    count=0
    for s,t in zip(S,T):
        count+=s!=t
    print(count)
main()

```

#### 最遅

```python
s = str(input(""))
t = str(input(""))
count = 0
for  i in range(len(t)):
    if t[i] != s[i]:
        s.replace(s[i],t[i],1)
        count += 1
print(count)

```

## 171

#### 最速

```python
N,K = map(int,input().split())
P = list(map(int,input().split()))
P.sort()
print(sum(P[:K]))

```

#### 最遅

```python
N, M = map(int, input().split())
*A, = map(int, input().split())

INF = 1<<30
dp = [[INF]*(N) for _ in [0]*(M+1)]
dp[0][0] = 0
dp[1][0] = A[0]

for i, a in enumerate(A):
    if i == 0:
        continue
    for k in range(M+1):
        dp[k][i] = min(dp[k][i-1], dp[k-1][i-1]+a)

print(min(dp[M]))

```

## 170

#### 最速

```python
x, y = map(int, input().split())
count = 0

for a in range(x+1):
  b = x - a
  if y == a * 2 + b * 4:
    count += 1
if count == 0:
  print("No")
else:
  print('Yes')

```

#### 最遅

```python
from numpy.linalg import solve

X, Y = map(lambda x: int(x), input().split(" "))

left = [[1,1],
        [2, 4]]

right = [X, Y]

answer = solve(left, right)

if answer[0].is_integer() and answer[0] >= 0 and answer[1].is_integer() and answer[1] >= 0:
    print("Yes")
else:
    print("No")

```

## 169

#### 最速

```python
import sys

def main():
  N = int(input())
  P = sys.stdin.readline().rstrip().split()
  if '0' in P:
    print(0)
    return
  ans = 1
  for a in P:
    ans *= int(a)
    if ans > 1000000000000000000:
      print(-1)
      return
  print(ans)

if __name__ == "__main__":
    main()

```

#### 最遅

```python
n,*l=map(int,open(0).read().split())
from heapq import *
heapify(l)
while len(l)>1:
  heappush(l,heappop(l)*heappop(l))
print([l[0],-1][l[0]>10**18])

```

## 168

#### 最速

```python
K = int(input())
S = list(input())

if K >= len(S):
  for i in S:
    print(i,end="")
else:
  for i in range(K):
    print(S[i],end="")
  print("...")

```

#### 最遅

```python
import numpy as np
import scipy as sp
import math

N = int(input())
S = input()
M = int(len(S))
if(M<=N):
  print(S)
else:
  print(S[0:N] + "...")

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
