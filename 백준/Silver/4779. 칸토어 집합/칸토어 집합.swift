import Foundation

func cantorianSet(_ n: Double) -> String {
   if n == 0 {
	  return "-"
   }
   
   let line = cantorianSet(n - 1)
   
   let empty = String(repeating: " ", count: Int(pow(3, n - 1)))
   
   let string = line + empty + line
   
   return string
}

while let input = readLine() {
   let num = Double(input)!

   print(cantorianSet(num))
}
