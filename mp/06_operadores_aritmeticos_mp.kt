fun main() {
    val asientos1 = 1
    val asientos2 = 2

    println("Asignación de plazas")
    println("$asientos1 + $asientos2 : ${asientos1 + asientos2}")

    println("Desembarque")
    println("$asientos1 - $asientos2 : ${asientos1 - asientos2}")

    println("Carga total")
    println("$asientos1 * $asientos2 : ${asientos1 * asientos2}")

    println("Distribución")
    println("$asientos1 / $asientos2 : ${asientos1 / asientos2}")

    println("Restos de pasajeros")
    println("$asientos1 % $asientos2 : ${asientos1 % asientos2}")

    println("Operaciones de gestión de vuelo")

    var capacidad = 10

    capacidad += 5
    println("capacidad+=5 $capacidad")

    capacidad -= 3
    println("capacidad-=3 $capacidad")

    capacidad *= 6
    println("capacidad*=2 $capacidad")

    capacidad /= 2
    println("capacidad/=2 $capacidad")

    capacidad %= 2
    println("capacidad%=2 $capacidad")

    capacidad++
    println("capacidad++ $capacidad")

    capacidad--
    println("capacidad-- $capacidad")
}