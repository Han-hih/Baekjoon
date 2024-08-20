fun main() {
    val rectangles = mutableListOf<Rectangle>()
    
    repeat(4) {
        val (x1, y1, x2, y2) = readLine()!!.split(" ").map { it.toInt() }
        rectangles.add(Rectangle(x1, y1, x2, y2))
    }

    val grid = Array(101) { IntArray(101) }

    for (rect in rectangles) {
        for (i in rect.x1 until rect.x2) {
            for (j in rect.y1 until rect.y2) {
                grid[i][j] = 1
            }
        }
    }

    var area = 0
    for (i in 0..100) {
        for (j in 0..100) {
            if (grid[i][j] == 1) {
                area++
            }
        }
    }
    println(area)
}
data class Rectangle(val x1: Int, val y1: Int, val x2: Int, val y2: Int)