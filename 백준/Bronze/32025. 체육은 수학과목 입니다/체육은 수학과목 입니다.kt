fun main() {
    val H = readln().toDouble()
    val W = readln().toDouble()

    val circle = minOf(H, W)

    println((circle / 2 * 100).toInt())
}