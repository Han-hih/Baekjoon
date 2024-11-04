import sys
input = sys.stdin.read

data = input().splitlines()
nA, nB = map(int, data[0].split())
A = set(map(int, data[1].split()))
B = set(map(int, data[2].split()))

result = sorted(A - B)

if result:
    print(len(result))
    print(" ".join(map(str, result)))
else:
    print(0)