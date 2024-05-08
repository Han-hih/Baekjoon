import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]

var firstSet: Set<String> = []
var secondSet: Set<String> = []

for _ in 0..<N {
   firstSet.insert(readLine()!)
}

for _ in 0..<M {
   secondSet.insert(readLine()!)
}

print(firstSet.intersection(secondSet).count)

let interSet = firstSet.intersection(secondSet).sorted()

for i in interSet {
   print(i)
}
