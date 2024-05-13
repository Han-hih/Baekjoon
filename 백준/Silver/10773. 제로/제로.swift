import Foundation

let K = Int(readLine()!)!

var result: [Int] = []
var sum = 0

for _ in 0..<K {
   let input = Int(readLine()!)!
   
   if input == 0 {
	  result.removeLast()
   } else {
	  result.append(input)
   }
}

for i in 0..<result.count {
   sum += result[i]
}
print(sum)