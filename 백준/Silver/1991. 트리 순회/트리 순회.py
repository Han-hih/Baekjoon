import sys
input = sys.stdin.readline

n = int(input())
tree = {}

for _ in range(n):
    root, left, right = input().strip().split()
    tree[root] = [left, right]

def preorder(cur_node):
    if cur_node == '.':
        return

    print(cur_node, end="")
    preorder(tree[cur_node][0])
    preorder(tree[cur_node][1])

def inorder(cur_node):
    if cur_node == '.':
        return

    inorder(tree[cur_node][0])
    print(cur_node, end="")
    inorder(tree[cur_node][1])

def postorder(cur_node):
    if cur_node == '.':
        return

    postorder(tree[cur_node][0])
    postorder(tree[cur_node][1])
    print(cur_node, end="")

preorder('A')
print()
inorder('A')
print()
postorder('A')
