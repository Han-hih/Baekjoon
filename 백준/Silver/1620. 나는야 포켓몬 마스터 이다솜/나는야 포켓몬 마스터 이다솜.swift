import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var dict: [Int: String] = [:]
var dict2: [String: Int] = [:]

for i in 1...N {
   let pocketmon = readLine()!
   dict.updateValue(pocketmon, forKey: i)
   dict2.updateValue(i, forKey: pocketmon)
}

for _ in 0..<M {
   let input = readLine()!
   if let key = Int(input) {
	  print(dict[key]!)
   } else {
	  print(dict2[input]!)
   }
}