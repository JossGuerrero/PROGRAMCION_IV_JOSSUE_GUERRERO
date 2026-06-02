open class Persona(val nombre: String)
class Pasajero(nombre: String, val numeroAsiento: String): Persona(nombre)
class Piloto(nombre: String, val licencia: String): Persona(nombre)

fun main() {
    val pasajero = Pasajero("Ana Torres", "12A")
    val piloto = Piloto("Luis Gómez", "LIC1234")
    println("Pasajero: ${pasajero.nombre}, Asiento: ${pasajero.numeroAsiento}")
    println("Piloto: ${piloto.nombre}, Licencia: ${piloto.licencia}")
}
