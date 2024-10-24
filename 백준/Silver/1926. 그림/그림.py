import sys
from collections import deque
input = sys.stdin.readline

n, m = map(int, input().split())
graph = [list(map(int, input().split())) for _ in range(n)]
visited = [[False] * m for _ in range(n)]
num_of_pictures = 0
max_area = 0

def bfs(graph, x, y):
    queue = deque()
    queue.append((x, y))
    visited[x][y] = True
    dx = [0, 0, 1, -1]
    dy = [1, -1, 0, 0]
    area = 1

    while queue:
        cur_x, cur_y = queue.popleft()
        for i in range(4):
            next_x = cur_x + dx[i]
            next_y = cur_y + dy[i]
            if 0 <= next_x < n and 0 <= next_y < m  and not visited[next_x][next_y] and graph[next_x][next_y] == 1:
                queue.append((next_x, next_y))
                visited[next_x][next_y] = True
                area += 1
    return area

for i in range(n):
    for j in range(m):
        if graph[i][j] == 1 and not visited[i][j]:
            num_of_pictures += 1
            max_area = max(max_area, bfs(graph, i, j))

print(num_of_pictures)
print(max_area)