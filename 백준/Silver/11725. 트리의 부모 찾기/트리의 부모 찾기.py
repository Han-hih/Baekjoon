import sys
from collections import deque

input = sys.stdin.readline

n = int(input())
tree = [[] for _ in range(n + 1)]
parent = [0] * (n + 1)

for _ in range(n - 1):
    a, b = map(int, input().split())
    tree[a].append(b)
    tree[b].append(a)

def bfs():
    queue = deque([1])
    parent[1] = -1

    while queue:
        current = queue.popleft()
        for child in tree[current]:
            if parent[child] == 0:
                parent[child] = current
                queue.append(child)

bfs()

for i in range(2, n + 1):
    print(parent[i])