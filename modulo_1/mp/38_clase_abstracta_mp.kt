abstract class Vehiculo(val modelo: String) {
    abstract fun mover()
}

class Avion(modelo: String): Vehiculo(modelo) {
    override fun mover() {
        println("El avión $modelo está despegando.")
    }
}

fun main() {
    val avion = Avion("Airbus A320")
    avion.mover()
}
