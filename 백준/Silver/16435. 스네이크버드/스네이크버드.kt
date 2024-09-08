fun main() {
    val (n, l) = readln().split(" ").map { it.toInt() }
    val fruits = readln().split(" ").map { it.toInt() }.sorted()
    var len = l

    for (fruit in fruits) {
        if (len >= fruit) {
            len++
        } else {
            break
        }
    }
    println(len)
}