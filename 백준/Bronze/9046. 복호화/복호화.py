import sys
input = sys.stdin.readline

n = int(input())

for _ in range(n):
    t = input().rstrip()
    dic = {}

    for i in t:
        if i.isalpha():
            if i in dic:
                dic[i] += 1
            else:
                dic[i] = 1

    max_count = max(dic.values())
    result = [i for i, count in dic.items() if count == max_count]

    if len(result) > 1:
        print('?')
    else:
        print(result[0])