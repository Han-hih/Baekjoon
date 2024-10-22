import sys
input = sys.stdin.readline

def fizzbuzz(num):
    if num % 3 == 0 and num % 5 == 0:
        return 'FizzBuzz'
    elif num % 3 == 0:
        return 'Fizz'
    elif num % 5 == 0:
        return 'Buzz'
    else:
        return str(num)

arr = []
for i in range(3):
    arr.append(input().strip())

for i in range(3):
    if arr[i].isdigit():
        num = int(arr[i]) + (3 - i)
        print(fizzbuzz(num))
        break