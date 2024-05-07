import Foundation

let N = Int(readLine()!)!
let cards = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
let M = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

var dict = [Int: Int]()


for i in cards {
   if dict.keys.contains(i) {
	  dict[i]! += 1
   } else {
	  dict[i] = 1
   }
}

for i in nums {
   if dict.keys.contains(i) {
	  print(dict[i]!, terminator: " ")
   } else {
	  print(0, terminator: " ")
   }
}