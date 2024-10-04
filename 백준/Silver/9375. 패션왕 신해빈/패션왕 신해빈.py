import sys
from collections import defaultdict

input = sys.stdin.readline

n = int(input())

for _ in range(n):
    c = int(input())
    clothes = defaultdict(int)

    for _ in range(c):
        name, category = input().split()
        clothes[category] += 1

    result = 1
    for count in clothes.values():
        result *= (count + 1)

    print(result -1)

