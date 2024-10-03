import sys

input = sys.stdin.readline

n, k = map(int, input().split())
arr = []
count = 0

for _ in range(n):
    value = int(input())
    if value <= k:
        arr.append(value)

arr.sort(reverse=True)

for i in arr:
    if k == 0:
        break
    if i <= k:
        num = k // i
        count += num
        k -= i * num

print(count)
