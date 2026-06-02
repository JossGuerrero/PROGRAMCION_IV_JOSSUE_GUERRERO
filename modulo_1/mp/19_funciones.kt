fun main() {
    println("Gestión de vuelos - Funciones")
    val vuelo = crearVuelo("AV555", "Bogotá", "Lima")
    println(vuelo)
    val duracion = calcularDuracion(120, 30)
    println("Duración total del vuelo: $duracion minutos")
    mostrarMensajePasajero("Pedro")
}

fun crearVuelo(codigo: String, origen: String, destino: String): String {
    return "Vuelo[código=$codigo, origen=$origen, destino=$destino]"
}

fun calcularDuracion(tiempoVuelo: Int, tiempoEspera: Int): Int = tiempoVuelo + tiempoEspera

fun mostrarMensajePasajero(nombre: String) {
    println("Bienvenido a bordo, $nombre!")
}


