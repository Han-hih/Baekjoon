import Foundation

let input = Int(readLine()!)!
var arr: [Int] = []

var result: [String] = []
var count = 1

for _ in 0..<input {
   let num = Int(readLine()!)!
   
   while count <= num {
	  arr.append(count)
	  result.append("+")
	  count += 1
   }
   
   if arr.last == num {
	  arr.removeLast()
	  result.append("-")
   } else {
	  result.removeAll()
	  result.append("NO")
	  break
   }
}

for i in result {
   print(i)
}