fun main() {
    val map = mapOf(
        '-' to 0,
        '\\' to 1,
        '(' to 2,
        '@' to 3,
        '?' to 4,
        '>' to 5,
        '&' to 6,
        '%' to 7,
        '/' to -1
    )

    while (true) {
        val input = readln()

        if (input == "#") break

        var result = 0
        val length = input.length

        for ((index, char) in input.withIndex()) {
            val value = map[char] ?: 0 
            result += value * Math.pow(8.0, (length - index - 1).toDouble()).toInt() 
        }

        println(result)
    }
}