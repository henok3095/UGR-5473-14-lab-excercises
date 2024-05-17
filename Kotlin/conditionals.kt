
fun main() {
   
    val side1 = 5.0
    val side2 = 5.0
    val side3 = 5.0

    
    val triangleType = when {
        side1 == side2 && side2 == side3 -> "Equilateral Triangle"
        side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles Triangle"
        else -> "Scalene Triangle"
    }

   
    println("Triangle with sides $side1, $side2, $side3 is a $triangleType")
}


