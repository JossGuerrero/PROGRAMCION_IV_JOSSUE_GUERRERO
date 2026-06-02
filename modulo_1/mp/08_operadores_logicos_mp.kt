fun main() {
    println("Operadores Lógicos en control de vuelos")

    val vueloAutorizado = true
    val tieneCombustible = false
    val enMantenimiento = true

    println("&& - AND lógico")
    println("$vueloAutorizado && $tieneCombustible = ${vueloAutorizado && tieneCombustible}")
    println("$vueloAutorizado && $enMantenimiento = ${vueloAutorizado && enMantenimiento}")

    println("----------------------")
    println("|| - OR lógico")
    println("$vueloAutorizado || $tieneCombustible = ${vueloAutorizado || tieneCombustible}")
    println("$vueloAutorizado || $enMantenimiento = ${vueloAutorizado || enMantenimiento}")

    println("----------------------")
    println("! - NOT")
    println("! $vueloAutorizado = ${!vueloAutorizado}")
    println("! $enMantenimiento = ${!enMantenimiento}")
}