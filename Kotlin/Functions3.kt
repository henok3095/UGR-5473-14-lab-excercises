fun main() {
    val testString1 = "abcdefg"
    val testString2 = "hello"

    println("String '$testString1' has unique characters: ${hasUniqueCharacters(testString1)}")
    println("String '$testString2' has unique characters: ${hasUniqueCharacters(testString2)}")
}

fun hasUniqueCharacters(str: String): Boolean {
    val set = mutableSetOf<Char>()
    
    for (char in str) {
        if (!set.add(char)) {
            return false
        }
    }
    
    return true
}
