import Foundation

let n = Int(readLine()!)!

var array: [Int] = []

for _ in 1...n {
   var num = Int(readLine()!)!
   
   array.append(num)
}

array.sort(by: <)

for i in 0..<array.count {
   print(array[i])
}