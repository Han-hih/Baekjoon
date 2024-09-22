fun main() {
    val k = readln().toInt()

    for (classNum in 1..k) {
        val scores = readln().split(" ").map { it.toInt() }.toMutableList()
        val n = scores.removeAt(0) 

        scores.sortDescending()

        val maxScore = scores.maxOrNull()!!
        val minScore = scores.minOrNull()!!

        var largeGap = 0
        for (i in 0 until n - 1) {
            val gap = scores[i] - scores[i + 1]
            if (gap > largeGap) {
                largeGap = gap
            }
        }

        println("Class $classNum")
        println("Max $maxScore, Min $minScore, Largest gap $largeGap")
    }
}