fun main() {
    val number = 12321  // Change this number to test different cases

    val originalNumber = number
    var reversedNumber = 0
    var remainder: Int

    var temp = number
    while (temp != 0) {
        remainder = temp % 10
        reversedNumber = reversedNumber * 10 + remainder
        temp /= 10
    }

    val isPalindrome = originalNumber == reversedNumber

    if (isPalindrome) {
        println("$number is a palindrome")
    } else {
        println("$number is not a palindrome")
    }
}
