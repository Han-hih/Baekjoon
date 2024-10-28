from collections import deque

n = int(input())
a = list(map(int, input().split()))
s = int(input()) - 1

visited = [False] * n
visited[s] = True

queue = deque([s])
count = 1

while queue:
    c = queue.popleft()
    distance = a[c]

    for next in (c - distance, c + distance):
        if 0 <= next < n and not visited[next]:
            visited[next] = True
            queue.append(next)
            count += 1

print(count)