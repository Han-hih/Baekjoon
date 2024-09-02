fun main() {
    val n = readln().toInt()
    var result = 0

    repeat(n) {
        val word = readLine()!!
        val stack = mutableListOf<Char>()

        for (char in word) {
            if (stack.isNotEmpty() && stack.last() == char) {
                stack.removeAt(stack.size - 1)
            } else {
                stack.add(char)
            }
        }

        if (stack.isEmpty()) {
            result++
        }
    }
    println(result)
}