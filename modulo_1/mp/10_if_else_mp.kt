fun main() {
    println("Controles de Flujo en gestión de vuelos")

    println("¿Vuelo con seguro de pasajero? s/n: ")
    val tieneSeguro = readLine()?.trim()?.lowercase() == "s"

    println("Costo base del vuelo: ")
    val costoBase = readLine()?.toDoubleOrNull() ?: 0.0

    if (tieneSeguro) {
        val descuento = costoBase * 0.80
        println("Cobertura aplicada: $${"%.2f".format(descuento)}")
    } else {
        println("Pago estándar del vuelo: $${"%.2f".format(costoBase)}")
    }
}