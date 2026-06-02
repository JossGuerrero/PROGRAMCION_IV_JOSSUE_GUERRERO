class Vuelo(
    val id: Int,
    val codigo: String,
    val ruta: String,
    val precio: Double,
    private var asientosDisponibles: Int
) {
    val precioConImpuestos: Double
        get() = precio * 1.12

    val hayAsientos: Boolean
        get() = asientosDisponibles > 0

    fun reservar(cantidad: Int): Boolean {
        if (asientosDisponibles >= cantidad) {
            asientosDisponibles -= cantidad
            return true
        }
        return false
    }

    override fun toString(): String {
        val precioFormateado = "%.2f".format(precio)
        return "Vuelo[$codigo, ruta=$ruta, precio=$$precioFormateado, asientos=$asientosDisponibles]"
    }
}