import Foundation

let input = readLine()!.map { $0 }
var set: Set<String> = []

for i in 0..<input.count {
   var string = ""
   for j in i..<input.count {
	  string += String(input[j])
	  set.insert(string)
   }
}

print(set.count)