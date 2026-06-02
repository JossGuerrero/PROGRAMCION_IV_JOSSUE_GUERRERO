fun main() {
    println("Controles de Flujo en gestión de vuelos")
    println("¿El vuelo tiene historial de fallas técnicas?")

    val tieneHistorial = readLine()?.trim()?.lowercase() == "s"

    println("Frecuencia de revisión del motor (ciclos):")
    val frecuencia = readLine()?.toIntOrNull() ?: 0

    if (tieneHistorial) {
        print("Aeronave con historial de fallas ")
        if (frecuencia < 50) {
            println("Mantenimiento crítico urgente")
        } else if (frecuencia > 100) {
            println("Revisión preventiva necesaria")
        } else {
            println("Estado de mantenimiento normal")
        }
    } else {
        print("Aeronave sin historial de fallas ")
        if (frecuencia < 50 || frecuencia > 100) {
            println("Frecuencia de revisión fuera del rango estándar")
        } else {
            println("Mantenimiento dentro de parámetros normales")
        }
    }
}