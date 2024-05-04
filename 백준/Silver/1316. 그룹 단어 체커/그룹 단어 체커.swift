
let N = Int(readLine()!)!

var count = 0

for _ in 1...N {
   let input = readLine()!
   var array: [Character] = []
   
   for i in input {
	  if !array.contains(i) {
		 array.append(i)
	  } else if array.last != i {
		 array.removeAll()
		 break
	  }
   }
   
   if array.count != 0 {
	  count += 1
   }
}



print(count)