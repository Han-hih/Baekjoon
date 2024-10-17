import sys
import heapq
input = sys.stdin.readline

n = int(input().strip())
heap = []

for _ in range(n):
    x = int(input().strip())

    if x != 0:
        heapq.heappush(heap, (abs(x), x))
    else:
        if not heap:
            print(0)
        else:
            print(heapq.heappop(heap)[1])