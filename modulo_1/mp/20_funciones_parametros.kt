fun main() {
    println("Gestión de vuelos - Funciones con parámetros por defecto")
    println(crearReserva("Pedro Pérez", "AV101", "12A"))
    println(crearReserva("Ana Torres"))
    println(crearReserva("Luis Gómez", asiento = "14B"))
    println(crearReserva(nombre = "María López", vuelo = "AV202"))
}

fun crearReserva(
    nombre: String = "Pasajero",
    vuelo: String = "AV000",
    asiento: String = "Sin asignar"
): String {
    return "Reserva[Pasajero: $nombre, Vuelo: $vuelo, Asiento: $asiento]"
}


