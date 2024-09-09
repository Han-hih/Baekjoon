fun main() {
    var input = readln()
    
    input = input.replace("XXXX", "AAAA")
    input = input.replace("XX", "BB")
    
    if (input.contains("X")) {
        println("-1")
    } else {
        println(input)
    }
}