fun main() {
    println("Ejemplo de gestión de vuelos - Constructores secundarios")
    val vuelo1 = Vuelo("AV123", "Bogotá", "Medellín")
    val vuelo2 = Vuelo("AV456", "Quito", "Lima", 120)
    println(vuelo1)
    println(vuelo2)
}

class Vuelo {
    var codigo: String
    var origen: String
    var destino: String
    var asientos: Int

    constructor(codigo: String, origen: String, destino: String) {
        this.codigo = codigo
        this.origen = origen
        this.destino = destino
        this.asientos = 100 // valor por defecto
    }

    constructor(codigo: String, origen: String, destino: String, asientos: Int) {
        this.codigo = codigo
        this.origen = origen
        this.destino = destino
        this.asientos = asientos
    }

    override fun toString(): String {
        return "Vuelo[codigo=$codigo, origen=$origen, destino=$destino, asientos=$asientos]"
    }
}
