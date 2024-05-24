import Foundation

let N = Int(readLine()!)!
var firstArray = readLine()!.split(separator: " ").map { Int($0)! }
let M = Int(readLine()!)!
let secondArray = readLine()!.split(separator: " ").map { Int($0)! }

firstArray.sort()

func binarySearch(_ arr: [Int], _ n: Int) -> Int {
   var start = 0
   var end = arr.count - 1
   
   while start <= end {
	  let mid = (start + end) / 2
	  if firstArray[mid] == n {
		 return 1
	  } else if firstArray[mid] > n {
		 end = mid - 1
	  }else if firstArray[mid] < n {
		 start = mid + 1
	  }
   }
   return 0
}

for i in 0..<M {
	print(binarySearch(firstArray, secondArray[i]))
}