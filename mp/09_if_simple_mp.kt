fun main() {
    println("Controles de Flujo en sistema de vuelo")
    println("Ingresar temperatura del motor: ")
    val temperatura = readLine()?.toDoubleOrNull() ?: 36.5

    if (temperatura >= 38.0) {
        println("Alerta en motor: revisión prioritaria requerida")
    }
    if (temperatura >= 40.0) {
        println("Alerta crítica: aterrizaje de emergencia inmediato")
    }

    println("Temperatura registrada: $temperatura grados centígrados")
}