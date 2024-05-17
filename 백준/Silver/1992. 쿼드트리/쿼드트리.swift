import Foundation

let N = Int(readLine()!)!

var arr: [[Int]] = []
var result = ""

for _ in 0..<N {
   arr.append(readLine()!.map { Int(String($0))!} )
}

func zip(x: Int, y: Int, n: Int) {
   var white = 0
   var black = 0
   
   for x in x..<x + n {
	  for y in y..<y + n {
		 if arr[x][y] == 0 {
			white += 1
		 } else {
			black += 1
		 }
	  }
   }
   
   if white == n * n {
	  result += "0"
	  return
   }
   
   if black == n * n {
	  result += "1"
	  return
   }
  
   result += "("
   zip(x: x, y: y, n: n / 2)
   zip(x: x, y: y + (n / 2), n: n / 2)
   zip(x: x + (n / 2), y: y, n: n / 2)
   zip(x: x + (n / 2), y: y + (n / 2), n: n / 2)
   result += ")"
}
zip(x: 0, y: 0, n: N)

print(result)