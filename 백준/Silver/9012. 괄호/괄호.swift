import Foundation

let T = Int(readLine()!)!

func searchVPS(_ input: [Character]) {
   var counter = 0
   
   for str in input {
	  if str == "(" {
		 counter += 1
	  } else {
		 counter -= 1
		 if counter < 0 {
			break
		 }
	  }
   }
   
   counter == 0 ? print("YES") : print("NO")
}

for _ in 0..<T {
   let input = readLine()!.map { $0 }
   
   if input.count % 2 != 0 || input.last == "(" || input.first == ")" {
	  print("NO")
   } else {
	  searchVPS(input)
   }
}