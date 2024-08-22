import java.util.Calendar

fun isLeapYear(year: Int): Boolean {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
}

fun countFridayThe13ths(year: Int): Int {
    var count = 0
    for (month in 0..11) {
        val calendar = Calendar.getInstance()
        calendar.set(year, month, 13)
        if (calendar.get(Calendar.DAY_OF_WEEK) == Calendar.FRIDAY) {
            count++
        }
    }
    return count
}

fun main() {
    val n = readLine()!!.toInt()
    var totalFridays = 0

    for (year in 2019..n) {
        totalFridays += countFridayThe13ths(year)
    }

    println(totalFridays)
}
