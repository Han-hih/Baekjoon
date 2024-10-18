import sys
input = sys.stdin.readline

def backtrack(n, m, start, sequence):
    if len(sequence) == m:
        print(' '.join(map(str, sequence)))
        return

    for i in range(start, n + 1):
        backtrack(n, m, i + 1, sequence + [i])

n, m = map(int, input().split())

backtrack(n, m, 1, [])