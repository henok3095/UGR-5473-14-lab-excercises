fun main() {
    val numbers = intArrayOf(5, 2, 9, 1, 5, 6, 3)

    
    val sortedNumbers = sortArray(numbers)

    
    println("Sorted array: ${sortedNumbers.joinToString()}")
}

fun sortArray(arr: IntArray): IntArray {
    
    arr.sort()
    return arr
}
