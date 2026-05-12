open class Persona(val nombre: String)
class Pasajero(nombre: String, val asiento: String): Persona(nombre)
class Piloto(nombre: String, val licencia: String): Persona(nombre)
data class Vuelo(val codigo: String, val origen: String, val destino: String, val piloto: Piloto, val pasajeros: List<Pasajero>)

fun main() {
    val piloto = Piloto("Juan Pérez", "LIC5678")
    val pasajeros = listOf(
        Pasajero("Ana Torres", "12A"),
        Pasajero("Luis Gómez", "14B")
    )
    val vuelo = Vuelo("AV999", "Bogotá", "Miami", piloto, pasajeros)
    println(vuelo)
}
