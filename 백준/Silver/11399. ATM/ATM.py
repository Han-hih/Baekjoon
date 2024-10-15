import sys
input = sys.stdin.readline

n = int(input())
times = list(map(int, input().split()))

times.sort()

total = 0
wait = 0

for time in times:
    wait += time
    total += wait

print(total)