import Foundation

let N = Int(readLine()!)!
var array: [(age: String, name: String)] = []

for _ in 0..<N {
   let info = readLine()!.split(separator: " ").map { String($0) }
   array.append((age: info[0], name: info[1]))
}

array.sort(by: { Int($0.0)! < Int($1.0)! } )

for i in 0..<array.count {
   print(array[i].age, array[i].name)
}