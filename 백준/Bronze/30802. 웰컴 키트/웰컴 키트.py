import math

N = int(input())  
S = list(map(int, input().split())) 
T, P = map(int, input().split())

shirts = 0
for size in S:
    shirts += math.ceil(size / T) 

pen = N // P
remain = N % P

print(shirts)  
print(pen, remain)