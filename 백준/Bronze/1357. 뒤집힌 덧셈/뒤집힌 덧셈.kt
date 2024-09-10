fun main() {
    val (x, y) = readln().split(" ").map { it.toInt() }
    
    val result = Rev(Rev(x) + Rev(y))

    println(result)
} 

private fun Rev(n: Int): Int {
    return n.toString().reversed().toInt()
}