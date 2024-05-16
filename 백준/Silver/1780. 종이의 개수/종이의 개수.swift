import Foundation

let N = Int(readLine()!)!

var arr: [[Int]] = []
var result: [Int] = [0, 0, 0]

for _ in 0..<N {
   arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

func dfs(x: Int, y: Int, n: Int) {
   var minus = 0
   var zero = 0
   var plus = 0
   
   for x in x..<x + n {
	  for y in y..<y + n {
		 if arr[x][y] == -1 {
			minus += 1
		 } else if arr[x][y] == 0 {
			zero += 1
		 } else {
			plus += 1
		 }
	  }
   }

   if minus == n * n {
	  result[0] += 1
	  return
   }
   
   if zero == n * n {
	  result[1] += 1
	  return
   }
   
   if plus == n * n {
	  result[2] += 1
	  return
   }
   
   dfs(x: x, y: y, n: n / 3) // 1
   dfs(x: x + (n / 3), y: y, n: n / 3) // 2
   dfs(x: x + (n / 3) * 2, y: y, n: n / 3) // 3
   
   dfs(x: x, y: y + (n / 3), n: n / 3) // 4
   dfs(x: x + (n / 3), y: y + (n / 3), n: n / 3) // 5
   dfs(x: x + (n / 3) * 2, y: y + (n / 3), n: n / 3) // 6
   
   dfs(x: x, y: y + (n / 3) * 2, n: n / 3) // 7
   dfs(x: x + (n / 3), y: y + (n / 3) * 2, n: n / 3) // 8
   dfs(x: x + (n / 3) * 2, y: y + (n / 3) * 2, n: n / 3) // 9
   
}

dfs(x: 0, y: 0, n: N)

print(result[0])
print(result[1])
print(result[2])