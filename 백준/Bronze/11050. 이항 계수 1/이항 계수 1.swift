import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], K = input[1]

func binoimal(_ n: Int, _ k: Int) -> Int {
   let facN = factorial(n)
   let facK = factorial(k)
   let facNK = factorial(n - k)
   
   var result = facN / (facNK * facK)
   
   return result
}

func factorial(_ n: Int) -> Int {
   if n <= 1 { return 1 }
   
   return n * factorial(n - 1)
}

print(binoimal(N, K))