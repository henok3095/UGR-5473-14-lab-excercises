fun main() {
    
    val month = 4
    val day = 15

    
    val season = when (month) {
        12, 1, 2 -> "Winter"
        3, 4, 5 -> "Spring"
        6, 7, 8 -> "Summer"
        9, 10, 11 -> "Fall"
        else -> "Invalid month" 
    }

    
    println("Month $month and day $day is in the season of $season")
}