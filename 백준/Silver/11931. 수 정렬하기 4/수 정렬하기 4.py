import sys
input = sys.stdin.read().split()

numbers = sorted(map(int, input[1:]), reverse=True)

print('\n'.join(map(str, numbers)))