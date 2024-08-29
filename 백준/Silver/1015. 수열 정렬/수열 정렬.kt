fun main() {
    val n = readln().toInt()
    val a = readln().split(" ").map { it.toInt() }

    val index = a.withIndex().toList()

    val sortedIndex = index.sortedWith(compareBy({ it.value }, { it.index }))

    val p = IntArray(n)
    for (i in sortedIndex.indices) {
        p[sortedIndex[i].index] = i
    }

    println(p.joinToString(" "))
}