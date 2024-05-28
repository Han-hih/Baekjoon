let N = Int(readLine()!)!
var cards = Array<Int>(1...N)
var count = 0

for _ in 0..<cards.count - 1 {
   cards.append(cards[count + 1])
   count += 2
}

print(cards[count])