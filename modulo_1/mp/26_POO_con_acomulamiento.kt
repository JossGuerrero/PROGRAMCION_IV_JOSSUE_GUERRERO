class AerolineaCuenta(nombreEmpresa: String, saldoInicial: Double) {

    val nombreEmpresa: String = nombreEmpresa

    private var saldo: Double = saldoInicial

    internal val codigoEmpresa: String =
        "AL${(1000..9999).random()}"

    protected open fun calcularComision(): Double = saldo * 0.01

    fun ingresarFondos(monto: Double) {
        require(monto > 0) { "El monto debe ser positivo" }
        saldo += monto
        println("Ingresado: $${"%.2f".format(monto)} | Nuevo saldo: ${consultarSaldo()}")
    }

    fun pagarServicio(monto: Double): Boolean {
        require(monto > 0) { "El monto debe ser positivo" }
        if (monto > saldo) {
            println("Fondos insuficientes para pagar el servicio")
            return false
        }
        saldo -= monto
        println("Pagado: $${"%.2f".format(monto)} | Nuevo saldo: ${consultarSaldo()}")
        return true
    }

    fun consultarSaldo(): String = "$${"%.2f".format(saldo)}"
}

fun main() {
    val cuenta = AerolineaCuenta("AeroFast", 5000.0)
    cuenta.ingresarFondos(1500.0)
    cuenta.pagarServicio(300.0)
    cuenta.pagarServicio(10000.0)
    println(cuenta.nombreEmpresa)
    println(cuenta.consultarSaldo())
}