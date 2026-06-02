object ControlVuelos {
    private val vuelos = mutableListOf<String>()
    fun agregarVuelo(codigo: String) {
        vuelos.add(codigo)
    }
    fun mostrarVuelos() {
        println("Vuelos registrados: $vuelos")
    }
}

fun main() {
    ControlVuelos.agregarVuelo("AV101")
    ControlVuelos.agregarVuelo("AV202")
    ControlVuelos.mostrarVuelos()
}
