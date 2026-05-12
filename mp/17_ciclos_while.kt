fun main() {
    println("Gestión de vuelos - Ciclo while")
    println("Ingrese códigos de vuelo (escriba 'fin' para terminar):")
    var vuelos = mutableListOf<String>()
    var input: String
    while (true) {
        input = readLine()?.trim() ?: ""
        if (input.lowercase() == "fin") break
        vuelos.add(input)
    }
    println("Vuelos ingresados:")
    for (codigo in vuelos) {
        println(codigo)
    }

    println("Buscar vuelo específico (ejemplo con break/continue):")
    var i = 0
    while (i < vuelos.size) {
        if (vuelos[i] == "AV404") {
            println("Vuelo AV404 encontrado, proceso especial.")
            break
        }
        i++
    }
}