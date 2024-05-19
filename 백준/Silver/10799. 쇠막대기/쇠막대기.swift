import Foundation

let line = Array(readLine()!)

var result = 0
var stack = 0

for i in 0..<line.count {
   if line[i] == "(" {
	  stack += 1
   } else {
	  stack -= 1
	  if line[i - 1] == "(" {
		 result += stack
	  } else {
		 result += 1
	  }
   }
}

print(result)