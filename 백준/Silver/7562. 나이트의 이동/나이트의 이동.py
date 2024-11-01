from collections import deque
import sys
input = sys.stdin.readline

def bfs(l, start, end):
    board = [[-1] * l for _ in range(l)]
    queue = deque([start])
    board[start[0]][start[1]] = 0

    while queue:
        x, y = queue.popleft()
        if (x, y) == end:
            return board[x][y]

        for dx, dy in moves:
            nx, ny = x + dx, y + dy
            if 0 <= nx < l and 0 <= ny < l and board[nx][ny] == -1:
                board[nx][ny] = board[x][y] + 1
                queue.append((nx, ny))
                
moves = [(-2, -1), (-1, -2), (1, -2), (2, -1), (2, 1), (1, 2), (-1, 2), (-2, 1)]

t = int(input())

for _ in range(t):
    l = int(input())
    start = tuple(map(int, input().split()))
    end = tuple(map(int, input().split()))
    print(bfs(l, start, end))