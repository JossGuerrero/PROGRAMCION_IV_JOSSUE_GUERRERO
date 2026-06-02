fun main() {
    println("Utilidades List - Gestión de vuelos")
    val vuelos = listOf(
        Triple("AV101", "Bogotá", 120),
        Triple("AV202", "Medellín", 90),
        Triple("AV303", "Cali", 110),
        Triple("AV404", "Cartagena", 150),
        Triple("AV505", "Lima", 180)
    )

    println("Códigos de vuelo: ${vuelos.map { it.first }}")
    val duraciones = vuelos.map { it.third }
    println("Duraciones: $duraciones")
    val vuelosLargos = vuelos.filter { it.third > 120 }
    println("Vuelos con duración >120 min: ${vuelosLargos.map { it.first }}")

    val soloDestinos = vuelos.map { it.second }
    println("Destinos: $soloDestinos")

    val mezcla = listOf(1, "AV101", true, "Bogotá", 120)
    val soloStrings = mezcla.filterIsInstance<String>()
    println("Elementos string mixtos: $soloStrings")

    println("Reduce / Fold sobre duraciones")
    val sumaDuraciones = duraciones.reduce { acc, n -> acc + n }
    println("Suma duraciones: $sumaDuraciones")
    val promedioDuracion = duraciones.average()
    println("Promedio duración: $promedioDuracion")

    println("Ordenación por duración ascendente: ${vuelos.sortedBy { it.third }}")
    println("Ordenación por duración descendente: ${vuelos.sortedByDescending { it.third }}")

    println("Agregación: Total minutos: ${duraciones.sum()}")
    println("Contar vuelos > 100min: ${duraciones.count { it > 100 }}")
    println("Buscar primer vuelo >100min: ${vuelos.find { it.third > 100 }?.first}")
    println("Existe algún vuelo a Lima?: ${vuelos.any { it.second == "Lima" }}")
}









