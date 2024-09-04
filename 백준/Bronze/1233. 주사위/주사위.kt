fun main() {
    val (s1, s2, s3) = readln().split(" ").map { it.toInt() }

    val frequency = IntArray(s1 + s2 + s3 + 1)

    for (i in 1..s1) {
        for (j in 1..s2) {
            for (k in 1..s3) {
                frequency[i + j + k]++
            }
        }
    }

    var maxFrequency = 0
    var result = 0

    for (sum in frequency.indices) {
        if (frequency[sum] > maxFrequency) {
            maxFrequency = frequency[sum]
            result = sum
        }
    }

    println(result)
}
