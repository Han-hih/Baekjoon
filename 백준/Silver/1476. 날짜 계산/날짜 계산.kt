fun main() {
    val (eInput, sInput, mInput) = readln().split(" ").map { it.toInt() }

    var year = 1
    var e = 1
    var s = 1
    var m = 1

    while (e != eInput || s != sInput || m != mInput) {
        year++
        e = if (year % 15 == 0) 15 else year % 15
        s = if (year % 28 == 0) 28 else year % 28
        m = if (year % 19 == 0) 19 else year % 19
    }

    println(year)
}