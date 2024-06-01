import Foundation

let N = Int(readLine()!)!
var first = 1
var i = 1

while first < N {
   first += 6 * i
   i += 1
}

print(i)