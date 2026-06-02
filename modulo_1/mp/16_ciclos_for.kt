fun main() {
    println("Gestión de vuelos - Ciclos for")
    println("Lista de vuelos programados:")
    val vuelos = listOf("AV101", "AV202", "AV303", "AV404")
    for (codigo in vuelos) {
        println("Vuelo: $codigo")
    }

    println("Lista de pasajeros:")
    val pasajeros = listOf("Juan Pérez", "María Gómez", "Luis Torres")
    for ((index, nombre) in pasajeros.withIndex()) {
        println("Pasajero ${index + 1}: $nombre")
    }

    println("Buscar vuelo específico (break/continue):")
    for (codigo in vuelos) {
        if (codigo == "AV202") {
            println("Vuelo AV202 encontrado, proceso especial.")
            break
        }
    }

    println("Mostrar solo vuelos que no sean AV303:")
    for (codigo in vuelos) {
        if (codigo == "AV303") continue
        println("Vuelo: $codigo")
    }

    val detallesVuelos = listOf(
        Triple("AV101", "Bogotá", 120),
        Triple("AV202", "Medellín", 90),
        Triple("AV303", "Cali", 110)
    )
    for ((pos, vuelo) in detallesVuelos.withIndex()) {
        val (codigo, destino, duracion) = vuelo
        println("$pos - Vuelo $codigo a $destino, duración: $duracion min")
    }
}