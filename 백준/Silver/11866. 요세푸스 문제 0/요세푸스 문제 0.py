def josephus(n, k):
    people = list(range(1, n + 1)) 
    result = []
    index = 0  

    while people:
        index = (index + k - 1) % len(people)
        result.append(people.pop(index))

    return result

n, k = map(int, input().split())

answer = josephus(n, k)
print("<" + ", ".join(map(str, answer)) + ">")