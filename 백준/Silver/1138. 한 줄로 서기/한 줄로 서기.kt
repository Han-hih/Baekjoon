fun main() {
    val n = readln().toInt()
    val counts = readln().split(" ").map { it.toInt() }.toIntArray()

    val result = IntArray(n)

    for (i in 0 until n) {
        var count = counts[i]
        for (j in 0 until n) {
            if (count == 0 && result[j] == 0) {
                result[j] = i + 1
                break
            } else if (result[j] == 0) {
                count--
            }
        }
    }

    println(result.joinToString(" "))
}