import sys
input = sys.stdin.readline

n = int(input())
A = list(map(int, input().split()))
nge = [-1] * n
stack = []

for i in range(n):
    while stack and A[stack[-1]] < A[i]:
        index = stack.pop()
        nge[index] = A[i]
    stack.append(i)

print(" ".join(map(str, nge)))
