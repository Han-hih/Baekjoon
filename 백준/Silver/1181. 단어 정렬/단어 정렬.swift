import Foundation

let N = Int(readLine()!)!
var set: Set<String> = []

for _ in 0..<N {
   let str = readLine()!
   set.insert(str)
}

let array = set.sorted(by: { $0.count == $1.count ? $0 < $1 : $0.count < $1.count })

for i in 0..<array.count {
   print(array[i])
}
