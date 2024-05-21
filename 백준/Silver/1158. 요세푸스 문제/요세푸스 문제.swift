import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], K = input[1]

var people = Array(1...N)
var result: [Int] = []
var count = K

while !people.isEmpty {
   if count <= people.count {
	  result.append(people[count - 1])
	  people.remove(at: count - 1)
	  count = count + K - 1
   }
   else {
	  count -= people.count
   }
}

print("<" + result.map { String($0) }.joined(separator: ", ") + ">")