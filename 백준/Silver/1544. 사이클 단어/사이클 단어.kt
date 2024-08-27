fun main() {
    val n = readln().toInt()
    val words = mutableListOf<String>()

    for (i in 0 until n) {
        val word = readln()
        val doubledWord = word + word
        var isNewCycle = true

        for (w in words) {
            if (w.length == word.length && doubledWord.contains(w)) {
                isNewCycle = false
                break
            }
        }

        if (isNewCycle) {
            words.add(word)
        }
    }

    println(words.size)
}