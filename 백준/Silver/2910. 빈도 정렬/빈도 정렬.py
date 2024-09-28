import sys
input = sys.stdin.readline

from collections import Counter

n, c = map(int, input().split())
nums = list(map(int, input().split()))

frequency = Counter(nums)
sorted_sequence = sorted(nums, key=lambda x: (-frequency[x], nums.index(x)))

print(' '.join(map(str, sorted_sequence)))