let input = Int(readLine()!)!

var set: Set<String> = []

for _ in 1...input {
   let log = readLine()!.split(separator: " ").map { String($0) }
   let name = log[0]
   let commute = log[1]
   set.insert(name)
   if set.contains(name) && commute == "leave" {
	  set.remove(name)
   }
}

let sortedSet = set.sorted(by: >)

for i in sortedSet {
   print(i)
}