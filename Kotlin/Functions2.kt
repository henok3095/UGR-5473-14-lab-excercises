fun main() {
    val number = 5

    
    val factorialResult = factorial(number)

    
    println("Factorial of $number = $factorialResult")
}

fun factorial(n: Int): Long {
    return if (n == 0 || n == 1) {
        1
    } else {
        n * factorial(n - 1)
    }
}
