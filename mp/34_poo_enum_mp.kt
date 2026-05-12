enum class EstadoVuelo {
    PROGRAMADO, EN_VUELO, ATRASADO, CANCELADO, FINALIZADO
}

fun main() {
    val vueloEstado = EstadoVuelo.EN_VUELO
    when (vueloEstado) {
        EstadoVuelo.PROGRAMADO -> println("El vuelo está programado.")
        EstadoVuelo.EN_VUELO -> println("El vuelo está en el aire.")
        EstadoVuelo.ATRASADO -> println("El vuelo está atrasado.")
        EstadoVuelo.CANCELADO -> println("El vuelo fue cancelado.")
        EstadoVuelo.FINALIZADO -> println("El vuelo ha finalizado.")
    }
}
