fun main() {
    val t = readln().toInt()

    repeat(t) {
        val (n, m) = readln().split(" ").map { it.toInt() }
        println(combination(m, n))
    }
}

fun combination(n: Int, r: Int): Long {
    var result = 1L
    var r = r

    if (r > n - r) {
        r = n - r
    }

    for (i in 0 until r) {
        result *= (n - i)
        result /= (i + 1)
    }

    return result
}