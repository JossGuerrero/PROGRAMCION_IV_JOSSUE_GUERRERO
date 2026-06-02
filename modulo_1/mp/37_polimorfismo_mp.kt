open class Empleado(val nombre: String) {
    open fun trabajar() {
        println("$nombre está trabajando en el aeropuerto.")
    }
}
class Piloto(nombre: String): Empleado(nombre) {
    override fun trabajar() {
        println("$nombre está pilotando un avión.")
    }
}
class Azafata(nombre: String): Empleado(nombre) {
    override fun trabajar() {
        println("$nombre está atendiendo a los pasajeros.")
    }
}

fun main() {
    val empleados = listOf(Empleado("Carlos"), Piloto("María"), Azafata("Lucía"))
    for (empleado in empleados) {
        empleado.trabajar()
    }
}
