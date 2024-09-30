import sys

def main():
    while True:
        line = sys.stdin.readline()
        if not line:
            break
        line = line.rstrip()
        if line == ".":
            break
        content = line[:-1]
        if is_pair(content):
            print("yes")
        else:
            print("no")

def is_pair(chars):
    stack = []
    for char in chars:
        if char == '(' or char == '[':
            stack.append(char)
        elif char == ')':
            if not stack or stack[-1] != '(':
                return False
            stack.pop()
        elif char == ']':
            if not stack or stack[-1] != '[':
                return False
            stack.pop()
    return not stack

main()