fun main() {
    val (a, b) = readln().split(" ")
    val aLen = a.length
    val bLen = b.length
    var result = Int.MAX_VALUE
    
    for (i in 0..(bLen - aLen)) {
        var currentDifference = 0
        for (j in a.indices) {
            if (a[j] != b[i + j]) {
                currentDifference++
            }
        }

        if (currentDifference < result) {
            result = currentDifference
        }
    }

    println(result)
}