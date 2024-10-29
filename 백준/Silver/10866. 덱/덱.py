import sys
from collections import deque
input = sys.stdin.readline
deque = deque()

n = int(input().strip())

for _ in range(n):
    command = input().strip().split()

    if command[0] == "push_front":
        deque.appendleft(int(command[1]))

    elif command[0] == "push_back":
        deque.append(int(command[1]))

    elif command[0] == "pop_front":
        if deque:
            print(deque.popleft())
        else:
            print(-1)

    elif command[0] == "pop_back":
        if deque:
            print(deque.pop())
        else:
            print(-1)

    elif command[0] == "size":
        print(len(deque))

    elif command[0] == "empty":
        print(1 if not deque else 0)

    elif command[0] == "front":
        if deque:
            print(deque[0])
        else:
            print(-1)

    elif command[0] == "back":
        if deque:
            print(deque[-1])
        else:
            print(-1)