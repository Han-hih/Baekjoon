import sys
from collections import deque

input = sys.stdin.read 
queue = deque()

commands = input().splitlines()
n = int(commands[0])

for i in range(1, n + 1):
    command = commands[i]

    if command.startswith('push'):
        _, x = command.split()
        queue.append(int(x))

    elif command == 'pop':
        if queue:
            print(queue.popleft())
        else:
            print(-1)

    elif command == 'size':
        print(len(queue))

    elif command == 'empty':
        print(0 if queue else 1)

    elif command == 'front':
        if queue:
            print(queue[0])
        else:
            print(-1)

    elif command == 'back':
        if queue:
            print(queue[-1])
        else:
            print(-1)