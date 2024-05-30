var N = Int(readLine()!)!
var count = 0

while N >= 3 {
   if N % 5 == 0 {
	  N -= 5
	  count += 1
   } else {
	  N -= 3
	  count += 1
   }
}

N == 0 ? print(count) : print(-1)