fun main() {
    val (x, y, w, h) = readln().split(" ").map { it.toInt() }

    val start = x
    val bottom = y
    val end = w - x
    val top = h - y

    println(minOf(start, bottom, end, top))
}