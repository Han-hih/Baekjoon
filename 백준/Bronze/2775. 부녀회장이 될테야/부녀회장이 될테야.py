import sys
input = sys.stdin.readline

t = int(input())
results = []

for _ in range(t):
    k = int(input())
    n = int(input())

    apt = [[0] * (n + 1) for _ in range(k + 1)]

    for i in range(1, n + 1):
        apt[0][i] = i

    for floor in range(1, k + 1):
        for room in range(1, n + 1):
            apt[floor][room] = apt[floor][room - 1] + apt[floor - 1][room]

    results.append(apt[k][n])

for result in results:
    print(result)