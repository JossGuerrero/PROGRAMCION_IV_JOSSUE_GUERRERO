fun main() {
    println("Modelos de datos para gestión de vuelos")
    val avion = Avion("Boeing 737", 180)
    val piloto = Piloto("Carlos Pérez", 15)
    val vuelo = Vuelo("AV789", avion, piloto)
    println(vuelo)
}

data class Avion(val modelo: String, val capacidad: Int)
data class Piloto(val nombre: String, val experiencia: Int)
data class Vuelo(val codigo: String, val avion: Avion, val piloto: Piloto)
