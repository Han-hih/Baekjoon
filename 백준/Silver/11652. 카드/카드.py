import sys
input = sys.stdin.readline

n = int(input())
dict = {}

for i in range(n):
    card = int(input())
    if card in dict:
        dict[card] += 1
    else:
        dict[card] = 1

dict = sorted(dict.items(), key=lambda x: (-x[1], x[0]))
print(dict[0][0])