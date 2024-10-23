import sys
from collections import deque
input = sys.stdin.readline

def bfs(graph):
    count = 0
    q = deque()
    q.append(1)
    visited[1] = True

    while q:
        cur = q.popleft()
        for next in graph[cur]:
            if not visited[next]:
                q.append(next)
                visited[next] = True
                count += 1
    return count


n = int(input())
m = int(input())
graph = [[] for i in range(n + 1)]
visited = [False] * (n + 1)

for i in range(m):
    a, b = map(int, input().split())
    graph[a] += [b]
    graph[b] += [a]

print(bfs(graph))
