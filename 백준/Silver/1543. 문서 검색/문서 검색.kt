fun main() {
    val N = readln()
    val M = readln()
    var count = 0
    val result = N.replace(M, "1")

    for (i in result) {
        if (i.toString() == "1") {
            count += 1
        }
    }
    print(count)
}