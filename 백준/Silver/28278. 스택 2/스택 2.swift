import Foundation

let N = Int(readLine()!)!

var stack: [Int] = []

func commandOutput(num: Int, input: Int?) {
   if num == 1 {
	  stack.append(input!)
   }
   
   if num == 2 {
	  !stack.isEmpty ? print(stack.popLast()!) : print(-1)
   }
   
   if num == 3 {
	  print(stack.count)
   }
   
   if num == 4 {
	  stack.isEmpty ? print(1) : print(0)
   }
   
   if num == 5 {
	  !stack.isEmpty ? print(stack.last!) : print(-1)
   }
}

for _ in 0..<N {
   let input = readLine()!.split(separator: " ").map { Int(String($0))! }
   let command = input[0]
   if input.count > 1 {
	  commandOutput(num: command, input: input[1])
   } else {
	  commandOutput(num: command, input: 0)
   }
}