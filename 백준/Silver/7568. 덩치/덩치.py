import sys
input = sys.stdin.readline

n = int(input())
people = [tuple(map(int, input().split())) for _ in range(n)]
ranks = [1] * n

for i in range(n):
    for j in range(n):
        if i != j:
            if people[i][0] < people[j][0] and people[i][1] < people[j][1]:
                ranks[i] += 1

print(" ".join(map(str, ranks)))