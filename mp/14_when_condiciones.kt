fun main() {
    println("Gestión de vuelos - When con condiciones arbitrarias")
    println("Edad del pasajero:")
    val edad = readLine()?.toIntOrNull() ?: 0
    println("¿Es miembro frecuente? (s/n):")
    val esFrecuente = readLine()?.trim()?.lowercase() == "s"
    val clase = if (esFrecuente) {
        println("Clase del vuelo (ECONOMICA/EJECUTIVA/PRIMERA):")
        readLine()?.trim()?.uppercase() ?: ""
    } else ""

    val descuento = when {
        edad < 12 -> 0.5 // 50% descuento para niños
        edad >= 60 -> 0.3 // 30% descuento para adultos mayores
        esFrecuente && clase == "PRIMERA" -> 0.2
        esFrecuente && clase == "EJECUTIVA" -> 0.15
        esFrecuente && clase == "ECONOMICA" -> 0.1
        else -> 0.0
    }
    println("Descuento aplicado: ${descuento * 100}%")
}
