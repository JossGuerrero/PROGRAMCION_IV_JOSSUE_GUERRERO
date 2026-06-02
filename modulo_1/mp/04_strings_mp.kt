fun main() {
    val piloto = "Peter"
    val aerolinea = "Parker"
    val aniosServicio = 28

    println("Bienvenido $piloto")
    println("Vuelo asignado : ${piloto.uppercase()} ${aerolinea.uppercase()}")
    val vueloCompleto = "Vuelo asignado : ${piloto.uppercase()} ${aerolinea.uppercase()}"
    println(vueloCompleto)
    println("Años de servicio : ${aniosServicio + 6} años")

    val tarjeta = """
    |Piloto: $piloto $aerolinea
    |Experiencia: $aniosServicio
    |Autorización: ${if(aniosServicio >= 18) "Activa" else "Inactiva"}
    """.trimMargin()
    println(tarjeta)
}