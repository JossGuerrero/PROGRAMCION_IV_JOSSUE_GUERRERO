fun main() {
    val pasajerosMax: Byte = 127
    println("Capacidad Byte $pasajerosMax")
    val asientosDisponibles: Short = 32_765
    println("Asientos Short $asientosDisponibles")
    val numeroVuelo: Int = 12
    println("Vuelo Int $numeroVuelo")
    val codigoAvion: Long = 2_122_122_122_123_123_987L
    println("Codigo Long $codigoAvion")

    println("Datos Decimales")
    val velocidad: Float = 3.14f
    println("Velocidad Float $velocidad")
    val altitud: Double = 3.1444738748
    println("Altitud Double $altitud")

    val vuelo = "Vuelo 742"
    val pasajeros = 56

    println("Vuelo $vuelo")
    val vueloTipo = vuelo::class.simpleName
    println("Tipo Inferido vuelo: $vueloTipo")
    println("Tipo Inferido vuelo: ${vuelo::class.simpleName}")
    println("Pasajeros: $pasajeros")
    val pasajerosTipo = pasajeros::class.simpleName
    println("Tipo Inferido pasajeros: $pasajerosTipo")
    println("Tipo Inferido pasajeros: ${pasajeros::class.simpleName}")
}