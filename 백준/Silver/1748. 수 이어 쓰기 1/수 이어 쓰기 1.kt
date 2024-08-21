fun main() {
    val N = readln().toInt()
    var result = 0

    for (i in 1..N) {
        when (i) {
            in 1..9 -> result += 1
            in 10..99 -> result += 2
            in 100..999 -> result += 3
            in 1000..9999 -> result += 4
            in 10000..99999 -> result += 5
            in 100000..999999 -> result += 6
            in 1000000..9999999 -> result += 7
            in 10000000..99999999 -> result += 8
            else -> result += 9
        }
    }
    println(result)
}