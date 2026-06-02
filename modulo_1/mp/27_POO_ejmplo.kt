// El constructor primario integra la declaración de propiedades
class Pasajero(val nombre: String, val edad: Int)

// Con cuerpo adicional
class Pasajero2(val nombre: String, val edad: Int) {
    fun presentarse() = "Soy $nombre y viajo en este vuelo"
    fun necesitaAsistencia() = edad >= 75 || edad < 2
}

fun main() {
    val p = Pasajero("Ana", 28)
    println(p.nombre)
    println(p.edad)

    val p2 = Pasajero2("Luis", 80)
    println(p2.presentarse())
    println("Necesita asistencia: ${p2.necesitaAsistencia()}")
}