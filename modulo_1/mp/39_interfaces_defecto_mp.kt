interface Reservable {
    fun reservar(nombre: String) {
        println("Reserva realizada a nombre de $nombre")
    }
}

class Vuelo: Reservable

fun main() {
    val vuelo = Vuelo()
    vuelo.reservar("Pedro Pérez")
}
