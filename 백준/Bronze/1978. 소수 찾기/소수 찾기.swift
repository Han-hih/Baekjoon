import Foundation

let N = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
var count = 0

func isPrimeNumber(_ n: Int) {
   if n < 2 {
	  return
   }
   
   for i in 2..<n {
	  if n % i == 0 { return }
   }
   count += 1
}

for i in arr {
   isPrimeNumber(i)
}

print(count)
