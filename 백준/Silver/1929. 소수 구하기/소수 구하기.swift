import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let M = input[0], N = input[1]

func isPrimeNumber(n: Int) {
   if n == 1 {
	  return
   }
   
   for i in 2..<Int(sqrt(Double(n)) + 1) {
	  if n % i == 0 {
		 return
	  }
   }
   print(n)
}

for i in M...N {
   isPrimeNumber(n: i)
}
