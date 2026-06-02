fun main() {
    println("Gestión de vuelos - When básico")
    println("Ingrese el código del vuelo:")
    val codigo = readLine()?.trim()?.uppercase() ?: ""
    val destino = when (codigo) {
        "AV101" -> "Bogotá"
        "AV202" -> "Medellín"
        "AV303" -> "Cali"
        "AV404" -> "Cartagena"
        else -> "Destino desconocido"
    }
    println("El vuelo $codigo tiene destino: $destino")
}