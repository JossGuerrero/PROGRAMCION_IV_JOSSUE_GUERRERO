class Reserva(val nombrePasajero: String, val codigoVuelo: String) {
    val nombreNormalizado: String
    val codigoNormalizado: String

    init {
        require(nombrePasajero.isNotBlank()) { "El nombre del pasajero no puede estar vacío" }
        require(codigoVuelo.matches(Regex("[A-Z]{2}[0-9]{3}"))) { "Código de vuelo inválido: $codigoVuelo" }

        nombreNormalizado = nombrePasajero.trim().replace("\\s+".toRegex(), " ")
        codigoNormalizado = codigoVuelo.uppercase()
    }
}

fun main() {
    val r = Reserva("  Ana García  ", "AV123")
    println(r.nombreNormalizado)
    println(r.codigoNormalizado)

    // Reserva("", "XXX") // Error por validación
}