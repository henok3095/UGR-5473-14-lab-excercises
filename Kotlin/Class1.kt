class Rectangle(private val length: Double, private val width: Double) {

    fun calculatePerimeter(): Double {
        return 2 * (length + width)
    }

    fun calculateArea(): Double {
        return length * width
    }
}

fun main() {
    val rectangle = Rectangle(5.0, 3.0)

    println("Rectangle Perimeter: ${rectangle.calculatePerimeter()}")
    println("Rectangle Area: ${rectangle.calculateArea()}")
}
