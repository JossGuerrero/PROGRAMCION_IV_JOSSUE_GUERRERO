fun main() {
    println("Escribe el primer numero: ")
    val n1 = readLine()!!.toInt()
    println("Escribe el suegundo numero: ")
    val n2 = readLine()!!.toInt()
    //operaciones
    
    println("Suma:")
    println("${n1+n2}")

   // Resta
    println("Resta:")
    println("${n1-n2}")

    // Multiplicación
    println("Multiplicación:")
    println("${n1*n2}")

    // División
    println("División:")
    println("${n1/n2}")

    // Módulo (Residuo de la división)
    println("Módulo:")
    println("${n1%n2}")
}