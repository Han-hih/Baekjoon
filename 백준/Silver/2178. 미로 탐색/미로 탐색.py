from collections import deque

n, m = map(int, input().split())
maze = [list(map(int, input().strip())) for _ in range(n)]

def mazeNavigation(x, y):
    queue = deque()
    queue.append((x, y))
    directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

    while queue:
        cur_x, cur_y = queue.popleft()
        for dx, dy in directions:
            nx, ny = cur_x + dx, cur_y + dy
            if 0 <= nx < n and 0 <= ny < m and maze[nx][ny] == 1:
                maze[nx][ny] = maze[cur_x][cur_y] + 1
                queue.append((nx, ny))

    return maze[n - 1][m - 1]

print(mazeNavigation(0, 0))