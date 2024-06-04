import Foundation

let N = Int(readLine()!)!
var stack: [Int] = []

for _ in 1...N {
   let input = readLine()!.split(separator: " ").map { String($0) }
   let command = input[0]
   
   if command == "push" {
	  stack.append(Int(input[1])!)
   } else if command == "pop" {
	  if !stack.isEmpty {
		 print(stack.last!)
		 stack.removeLast()
	  } else {
		 print(-1)
	  }
   } else if command == "size" {
	  print(stack.count)
   } else if command == "empty" {
	  if !stack.isEmpty {
		 print(0)
	  } else {
		 print(1)
	  }
   } else if command == "top" {
	  if !stack.isEmpty {
		 print(stack.last!)
	  } else {
		 print(-1)
	  }
   }
}