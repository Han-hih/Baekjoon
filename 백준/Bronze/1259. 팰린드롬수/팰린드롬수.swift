import Foundation

while true {
   let num = readLine()!.map { Int(String($0))! }
   
   if num == [0] {
	  break
   }
   
   if num == num.reversed() {
	  print("yes")
   } else {
	  print("no")
   }
}