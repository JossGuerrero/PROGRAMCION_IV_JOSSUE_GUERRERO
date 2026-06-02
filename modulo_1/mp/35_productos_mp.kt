data class Servicio(val nombre: String, val precio: Double)

fun main() {
    val servicios = listOf(
        Servicio("Maleta adicional", 30.0),
        Servicio("Asiento preferente", 15.0),
        Servicio("Comida a bordo", 10.0)
    )
    println("Servicios disponibles en el vuelo:")
    for (servicio in servicios) {
        println("- ${servicio.nombre}: $${servicio.precio}")
    }
}
