import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let c = Int(readLine()!)!
let n = Int(readLine()!)!

if input[0] * n + input[1] <= c * n && input[0] <= c {
   print(1)
} else {
   print(0)
}
