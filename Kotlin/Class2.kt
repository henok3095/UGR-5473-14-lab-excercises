class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {

    fun determineTriangleType(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral Triangle"
            side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles Triangle"
            else -> "Scalene Triangle"
        }
    }
}

fun main() {
    val triangle1 = Triangle(5.0, 5.0, 5.0)
    val triangle2 = Triangle(4.0, 4.0, 3.0)
    val triangle3 = Triangle(6.0, 7.0, 8.0)

    println("Triangle 1 is a ${triangle1.determineTriangleType()}")
    println("Triangle 2 is a ${triangle2.determineTriangleType()}")
    println("Triangle 3 is a ${triangle3.determineTriangleType()}")
}
