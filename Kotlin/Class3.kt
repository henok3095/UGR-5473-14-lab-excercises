data class Item(val name: String, val price: Double)

class ShoppingCart {
    private val items = mutableListOf<Item>()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        return items.sumByDouble { it.price }
    }

    fun displayItems() {
        if (items.isEmpty()) {
            println("Shopping cart is empty")
        } else {
            println("Items in the shopping cart:")
            items.forEach { println("${it.name}: $${it.price}") }
        }
    }
}

fun main() {
    val cart = ShoppingCart()


    cart.addItem(Item("Laptop", 1200.0))
    cart.addItem(Item("Mouse", 25.0))
    cart.addItem(Item("Keyboard", 80.0))

    
    cart.displayItems()
    println("Total Price: $${cart.calculateTotalPrice()}")

    cart.removeItem(Item("Mouse", 25.0))

 
    cart.displayItems()
    println("Total Price: $${cart.calculateTotalPrice()}")
}
