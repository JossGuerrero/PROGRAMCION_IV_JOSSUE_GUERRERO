class Producto(
    val id: Int,
    val nombre: String,
    val precio: Double,
    private var stock: Int 
) {
    // El getter debe ir justo debajo, indentado y sin barras "|"
    val precioConIva: Double
        get() = precio * 1.19

    val disponible: Boolean
        get() = stock > 0

    fun vender(cantidad: Int): Boolean {
        if (stock >= cantidad) {
            stock -= cantidad
            return true
        }
        return false
    }

    // Usamos String.format para asegurar compatibilidad
    override fun toString(): String {
        val precioFormateado = "%.2f".format(precio)
        return "$nombre ($$precioFormateado)"
    }
}