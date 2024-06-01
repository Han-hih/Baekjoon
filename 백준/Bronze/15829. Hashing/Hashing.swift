import Foundation

let length = Int(readLine()!)!
let strArr = readLine()!.map { Int($0.asciiValue!) - 96 }
let mod = 1234567891
var hash = 0
var m = 1

for i in strArr {
   hash = (hash + i * m) % mod
   m = (m * 31) % mod
}

print(hash)