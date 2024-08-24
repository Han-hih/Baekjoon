fun main() {
    val (N, kim, lim) = readln().split(" ").map { it.toInt() }

    var kimNum = kim
    var limNum = lim
    var round = 0

    while (kimNum != limNum) {
        kimNum = (kimNum + 1) / 2
        limNum = (limNum + 1) / 2
        round++
    }

    println(round)
}