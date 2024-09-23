fun main() {
    while (true) {
        val input = readln()
        val aeiou = listOf('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
        
        if (input == "#") break
        
        val count = input.count { it in aeiou }

        println(count)
    }
}