fun main() {
    val scores = mutableListOf<Pair<Int, Int>>()

    for (i in 1..8) {
        val score = readln().toInt()
        scores.add(Pair(score, i))
    }

    scores.sortByDescending { it.first }

    val topScores = scores.take(5)

    val totalScore = topScores.sumOf { it.first }

    val problemNumbers = topScores.map { it.second }.sorted()

    println(totalScore)
    println(problemNumbers.joinToString(" "))
}