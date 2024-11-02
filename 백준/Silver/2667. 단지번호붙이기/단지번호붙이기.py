from collections import deque
import sys
input = sys.stdin.readline

N = int(input().strip())
grid = [list(map(int, input().strip())) for _ in range(N)]

visited = [[False] * N for _ in range(N)]
dx = [-1, 1, 0, 0]
dy = [0, 0, -1, 1]
counts = []

def bfs(x, y):
    queue = deque()
    queue.append((x, y))
    visited[x][y] = True
    count = 1

    while queue:
        cur_x, cur_y = queue.popleft()
        for i in range(4):
            nx = cur_x + dx[i]
            ny = cur_y + dy[i]

            if 0 <= nx < N and 0 <= ny < N and not visited[nx][ny] and grid[nx][ny] == 1:
                queue.append((nx, ny))
                visited[nx][ny] = True
                count += 1
    return count

for i in range(N):
    for j in range(N):
        if grid[i][j] == 1 and not visited[i][j]:
            house_count = bfs(i, j)
            counts.append(house_count)
            
print(len(counts))
for count in sorted(counts):
    print(count)