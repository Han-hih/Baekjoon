import Foundation

let input = Array(readLine()!).map { $0 }

let sortedArray = input.sorted(by: >)

for i in 0..<sortedArray.count {
   print(sortedArray[i], terminator: "")
}