fun main() {
    val start = 10
    val end = 50

    println("Prime numbers between $start and $end:")
    var num = start

    while (num <= end) {
        if (isPrime(num)) {
            println(num)
        }
        num++
    }
}

fun isPrime(number: Int): Boolean {
    if (number <= 1) {
        return false
    }
    var isPrime = true
    var divisor = 2

    while (divisor * divisor <= number) {
        if (number % divisor == 0) {
            isPrime = false
            break
        }
        divisor++
    }

    return isPrime
}
