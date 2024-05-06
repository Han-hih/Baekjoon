import Foundation

let N = Int(readLine()!)!
let cards = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
let M = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

func binarySearch(_ array: [Int], num: Int) -> Bool {
   var start = 0
   var end = (array.count - 1)
   
   while start <= end {
	  let mid = (start + end) / 2
	  
	  if array[mid] == num { return true }
	  if array[mid] > num {
		 end = mid - 1
	  } else {
		 start = mid + 1
	  }
   }
   return false
}

for i in nums {
   binarySearch(cards, num: i) ? print(1, terminator: " ") : print(0, terminator: " ")
}