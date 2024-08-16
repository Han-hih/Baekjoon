fun main() {
    val N = readln().toInt()
    var result: Int = 0
    var sum = 0
    val arr = readln().split(" ").map { it.toInt() }

    for (i in 0..<N) {
        if (arr[i] == 1) {
            result += (1 + sum)
            sum += 1
        }
        else sum = 0
    }
  print(result)
}