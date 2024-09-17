fun main() {
    val s = readln()

    val result = mutableListOf<String>()
    for (i in s.indices) {
        result.add(s.substring(i))
    }

    result.sort()
    result.forEach { println(it) }
}