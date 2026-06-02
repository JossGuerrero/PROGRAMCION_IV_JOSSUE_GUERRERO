class Boleto(precio: Double) {

    var precio: Double = precio
        set(value) {
            require(value >= 0.0) { "El precio no puede ser negativo" }
            field = value
        }

    val precioConImpuesto: Double
        get() = precio * 1.12

    val descripcion: String
        get() = when {
            precio == 0.0 -> "Boleto promocional"
            precio < 50.0 -> "Económico"
            precio < 200.0 -> "Estándar"
            else -> "Premium"
        }
}

fun main() {
    val b = Boleto(120.0)
    println("Precio: $${"%.2f".format(b.precio)} | Con impuestos: $${"%.2f".format(b.precioConImpuesto)}")
    println(b.descripcion)

    b.precio = 30.0
    println("Nuevo precio: $${"%.2f".format(b.precio)} -> ${b.descripcion}")

    // b.precio = -10.0 // IllegalArgumentException
}