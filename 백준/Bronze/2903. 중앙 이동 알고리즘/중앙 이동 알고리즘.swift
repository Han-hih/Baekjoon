import Foundation

let input = Int(readLine()!)!

var num = 2
var result = 0

for i in 0..<input {
   num += Int(pow(2.0, Double(i)))
   result = num * num
}

print(result)