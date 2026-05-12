fun main() {
    println("Ingrese código de vuelo: ")
    val vuelo = readLine()
    println("Vuelo registrado: $vuelo")
      
    println("Ingrese destino: ")
    val destino = readLine() ?: "Destino desconocido"
    println("Destino registrado: $destino")
}