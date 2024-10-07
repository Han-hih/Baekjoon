import sys
input = sys.stdin.readline

n, m = map(int, input().split())
pass_dict = {}

for i in range(n):
    site, pw = input().split()
    pass_dict[site] = pw
    
for _ in range(m):
    site = input().strip()
    print(pass_dict[site])