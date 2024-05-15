import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let A = input[0], B = input[1], C = input[2]

func multiple(_ a: Int, _ b: Int, _ c: Int) -> Int {
   if b == 1 { return a % c }
   
   let value = multiple(a, b / 2, c)
   
   if b % 2 == 0 {
	  return value * value % c
   } else {
	  return ((value * value) % c * a) % c
   }
}

print(multiple(A, B, C))