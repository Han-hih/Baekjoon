import sys
input = sys.stdin.readline

n = int(input())
buildings = [int(input()) for _ in range(n)]
stack = []
result = 0

for i in buildings:
    while stack and stack[-1] <= i:
        stack.pop()

    result += len(stack)
    stack.append(i)

print(result)