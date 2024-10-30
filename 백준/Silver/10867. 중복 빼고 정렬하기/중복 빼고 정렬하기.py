N = int(input())  
numbers = set(map(int, input().split())) 

sorted_numbers = sorted(numbers)

print(" ".join(map(str, sorted_numbers)))