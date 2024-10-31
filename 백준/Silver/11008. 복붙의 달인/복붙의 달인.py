import sys
input = sys.stdin.readline

def min_typing_time(s, p):
    count = s.count(p)

    min_time = len(s) - count * len(p) + count
    return min_time


T = int(input())
for _ in range(T):
    s, p = input().split()
    print(min_typing_time(s, p))