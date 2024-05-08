import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]

var firstSet: Set<Int> = []
var secondSet: Set<Int> = []

let A = readLine()!.split(separator: " ").map { Int(String($0))! }
for i in A {
   firstSet.insert(i)
}
   
let B = readLine()!.split(separator: " ").map { Int(String($0))! }
for i in B {
   secondSet.insert(i)
}

let interSet = firstSet.symmetricDifference(secondSet).count

print(interSet)