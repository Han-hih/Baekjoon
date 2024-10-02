import sys
input = sys.stdin.readline

n = int(input())

for _ in range(n):
    p = int(input())

    max_price = 0
    max_name = ''

    for _ in range(p):
        line = input().strip()
        if not line:
            continue
        parts = line.split()
        c = int(parts[0])
        name = parts[1]

        if c > max_price:
            max_price = c
            max_name = name

    print(max_name)
