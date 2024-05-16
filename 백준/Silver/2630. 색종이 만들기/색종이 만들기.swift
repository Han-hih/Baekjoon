import Foundation

let N = Int(readLine()!)!

var arr: [[Int]] = []
var whiteCount = 0
var blueCount = 0

for _ in 0..<N {
   arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}


func dfs(x: Int, y: Int, n: Int) {
   var white = 0
   var blue = 0
   
   for x in x..<x + n {
	  for y in y..<y + n {
		 if arr[x][y] == 0 {
			white += 1
		 } else {
			blue += 1
		 }
	  }
   }
   
   if white == n * n {
	  whiteCount += 1
	  return
   }
   
   if blue == n * n {
	  blueCount += 1
	  return
   }
   
   dfs(x: x, y: y + (n / 2), n: n / 2)
   dfs(x: x + (n / 2), y: y, n: n / 2)
   dfs(x: x + (n / 2), y: y + (n / 2), n: n / 2)
   dfs(x: x, y: y, n: n / 2)
}

dfs(x: 0, y: 0, n: N)

print(whiteCount)
print(blueCount)