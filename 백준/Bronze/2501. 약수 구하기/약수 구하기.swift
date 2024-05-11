import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let K = input[1]

var array: [Int] = []

for i in 1...N {
   if N % i == 0 {
	  array.append(i)
   }
}

if array.count < K {
   print(0)
} else {
   print(array[K - 1])
}