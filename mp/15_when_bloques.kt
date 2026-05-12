fun main() {
    println("Gestión de vuelos - When con bloques de código")
    println("Nombre del pasajero:")
    val nombre = readLine()?.trim() ?: "Sin identificación"
    println("Estado del vuelo (ABORDANDO/EN_VUELO/DEMORADO/CANCELADO):")
    val estado = readLine()?.trim()?.uppercase() ?: ""

    when (estado) {
        "ABORDANDO" -> {
            println("Pasajero $nombre, por favor diríjase a la puerta de embarque.")
            println("Verifique su pase de abordar.")
        }
        "EN_VUELO" -> {
            println("Pasajero $nombre, disfrute su vuelo.")
        }
        "DEMORADO" -> {
            println("Pasajero $nombre, el vuelo está demorado. Espere instrucciones.")
        }
        "CANCELADO" -> {
            println("Pasajero $nombre, lamentamos informar que el vuelo ha sido cancelado.")
        }
        else -> println("Estado no reconocido")
    }
}
