fun main() {
    val N = readln().toInt()

    for (i in 0 until N) {
        val stars = 2 * (N - i) - 1 
        val spaces = i 
        println(" ".repeat(spaces) + "*".repeat(stars)) 
    }
}