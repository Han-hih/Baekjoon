fun main() {
    val n = readln().toInt()
    val radii = readln().split(" ").map { it.toInt() }
    val firstRadius = radii[0]

    for (i in 1 until n) {
        val currentRadius = radii[i]
        val div = gcd(firstRadius, currentRadius)

        println("${firstRadius / div}/${currentRadius / div}")
    }
}

fun gcd(a: Int, b: Int): Int {
    return if (b == 0) a else gcd(b, a % b)
}