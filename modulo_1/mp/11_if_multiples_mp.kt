fun main() {
    println("Controles de Flujo en sistema de vuelos")
    println("Presión del motor en PSI: ")

    val presionMotor = readLine()?.toIntOrNull() ?: 0

    val estadoVuelo = if (presionMotor <= 90) {
        "Motor en baja presión"
    } else if (presionMotor <= 119) {
        "Condición normal de vuelo"
    } else if (presionMotor <= 129) {
        "Presión elevada en cabina"
    } else if (presionMotor <= 139) {
        "Alerta nivel 1 en sistema de motor"
    } else if (presionMotor <= 179) {
        "Alerta nivel 2: revisión técnica requerida"
    } else {
        "Emergencia crítica en motor"
    }

    println("Estado del vuelo: $estadoVuelo")
}