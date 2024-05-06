import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]

var set: Set<String> = []

var result = 0

for _ in 0..<N {
   set.insert(readLine()!)
}

for _ in 0..<M {
   let testString = readLine()!
   result += set.contains(testString) ? 1 : 0
}

print(result)