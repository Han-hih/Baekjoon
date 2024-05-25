import Foundation

   
while true {
   let length = readLine()!.split(separator: " ").map { Double(String($0))! }.sorted()
   let a = length[0], b = length[1], c = length[2]

   if a == 0 {
	  break
   }
   
   if pow(c, 2) == pow(a, 2) + pow(b, 2) {
	  print("right")
   } else {
	  print("wrong")
   }
}
