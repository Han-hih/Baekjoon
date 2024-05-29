let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
var square: [[String]] = []
var answer = 999

for _ in 1...N {
   let color = readLine()!.map { String($0) }
   square.append(color)
}

let wBoard: [[String]] = [["W","B","W","B","W","B","W","B"],
							 ["B","W","B","W","B","W","B","W"],
							 ["W","B","W","B","W","B","W","B"],
							 ["B","W","B","W","B","W","B","W"],
							 ["W","B","W","B","W","B","W","B"],
							 ["B","W","B","W","B","W","B","W"],
							 ["W","B","W","B","W","B","W","B"],
							 ["B","W","B","W","B","W","B","W"]]

let bBoard: [[String]] = [["B","W","B","W","B","W","B","W"],
							 ["W","B","W","B","W","B","W","B"],
							 ["B","W","B","W","B","W","B","W"],
							 ["W","B","W","B","W","B","W","B"],
							 ["B","W","B","W","B","W","B","W"],
							 ["W","B","W","B","W","B","W","B"],
							 ["B","W","B","W","B","W","B","W"],
							 ["W","B","W","B","W","B","W","B"]]

func compare(x: Int, y: Int) -> Int {
   var bCount = 0
   var wCount = 0
   
   if square == wBoard || square == bBoard {
	  return 0
   }

   for i in 0..<8 {
	  for j in 0..<8 {
			if square[x + i][y + j] != bBoard[i][j] {
			   bCount += 1
			}
			if square[x + i][y + j] != wBoard[i][j] {
			   wCount += 1
			}
	  }
   }
   return min(bCount, wCount)
}



for x in 0...(N - 8) {
   for y in 0...(M - 8) {
	  if answer > compare(x: x, y: y) {
		 answer = compare(x: x, y: y)
	  }
   }
}

print(answer)