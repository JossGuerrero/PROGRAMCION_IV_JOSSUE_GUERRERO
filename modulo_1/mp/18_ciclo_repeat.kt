fun main() {
    println("Gestión de vuelos - Ciclo repeat")
    println("¿Cuántos pasajeros desea registrar en el vuelo?")
    val cantidad = readLine()?.toIntOrNull() ?: 0
    val pasajeros = mutableListOf<String>()
    repeat(cantidad) { i ->
        println("Nombre del pasajero ${i + 1}:")
        val nombre = readLine()?.trim() ?: ""
        pasajeros.add(nombre)
    }
    println("Pasajeros registrados:")
    for (nombre in pasajeros) {
        println(nombre)
    }
}