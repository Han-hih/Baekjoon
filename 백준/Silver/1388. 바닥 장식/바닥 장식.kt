fun main() {
    val (n, m) = readln().split(" ").map { it.toInt() }
    val floor = Array(n) { readLine()!! }

    var count = 0

    for (i in 0 until n) {
        var j = 0
        while (j < m) {
            if (floor[i][j] == '-') {
                count++
                while (j < m && floor[i][j] == '-') {
                    j++
                }
            }
            j++
        }
    }

    for (j in 0 until m) {
        var i = 0
        while (i < n) {
            if (floor[i][j] == '|') {
                count++
                while (i < n && floor[i][j] == '|') {
                    i++
                }
            }
            i++
        }
    }

    println(count)
}