import Foundation

let n = Int(readLine()!)!
var arr: [Double] = []

if n == 0 {
   print(0)
} else {
   
   for _ in 1...n {
	  let opinion = Double(readLine()!)!
	  arr.append(opinion)
   }
   
   arr.sort()
   
   let percent = Int((Double(n) * 0.15).rounded())
   
   if percent > 0 {
	  arr.removeFirst(percent)
	  arr.removeLast(percent)
   }
   
   let sum = arr.reduce(0, +)
   let result = (sum / Double(arr.count)).rounded()
   print(Int(result))
}
