fun main() {
    println("Escribe tu nombre: ")
    val nombre = readLine()
    println("nombre incluido: $nombre")
    
    println("Escribe apellido: ")
    val apellido = readlnOrNull() ?: "Anonimo"
    println("Apellido incluido:$apellido")
    
    
    /*multilinea*/
    
    // comentantarios una linea 
    /**
    *Comentarios
    *@param nombre del usuario
    *returm um saludo personalizado
    */
    
}