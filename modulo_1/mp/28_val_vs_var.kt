class AsientoInmutable(val fila: Int, val letra: Char)   // solo lectura

class ContadorVuelos(var totalVuelos: Int = 0) {
    fun incrementar() { totalVuelos++ }
    fun resetear() { totalVuelos = 0 }
}

// Sin val/var — parámetro del constructor, NO propiedad
// Solo accesible dentro del bloque init
class ReservaTemporal(nombrePasajero: String) {
    val nombreUpper = nombrePasajero.uppercase()
}