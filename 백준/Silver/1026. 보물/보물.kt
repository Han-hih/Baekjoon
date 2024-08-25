fun main() {
    val N = readln().toInt()
    val A = readln().split(" ").map { it.toInt() }.toMutableList()
    val B = readln().split(" ").map { it.toInt() }

    A.sort()

    var result = 0
    for (i in 0 until N) {
        result += A[i] * B.sortedDescending()[i]
    }

    println(result)
}