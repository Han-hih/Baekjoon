fun main() {
    val (H, W) = readln().split(" ").map { it.toInt() }
    repeat(H) {
        val row = readln()
        var last = -1
        val result = StringBuilder()
        for (j in 0 until W) {
            if (row[j] == 'c') {
                result.append("0 ")
                last = j
            } else {
                result.append(if (last == -1) "-1 " else "${j - last} ")
            }
        }
        println(result.toString().trim())
    }
}