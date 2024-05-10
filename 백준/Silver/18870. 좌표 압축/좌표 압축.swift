import Foundation

let N = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int(String($0))! }

var dict: [Int : Int] = [:]
var count = 0

for i in array.sorted() {
   if dict[i] == nil {
	  dict[i] = count
	  count += 1
   }
}

for i in array {
   print(dict[i]!, terminator: " ")
}