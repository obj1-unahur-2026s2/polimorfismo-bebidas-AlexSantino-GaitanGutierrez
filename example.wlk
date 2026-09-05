object tito {
  var peso = 70
  var bebidaConsumida = terere
  var dosis = 10

  method peso() {
    return peso
  }
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  method consumir(cantidad , bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }
  method velocidad (){
    return bebidaConsumida.rendimientoQueOtorga(dosis, self)
    * 490 / peso
  }
  method esFeliz() {
    return self.velocidad() > 7
  }
}

object pepe {
  var peso = 70
  var bebidaConsumida = terere
  var dosis = 10
  var edad = 30
  method peso() {
    return peso
  }
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  method consumir(cantidad , bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }
  method cumplirAnios() {edad = edad + 1}
  method velocidad (){
    return if (edad < 30 ) bebidaConsumida.rendimientoQueOtorga(dosis, self)
    * 490 / peso - if (edad < 30) 10 else 0
  }
  method esFeliz() {
    return self.velocidad() > 7
  }
}
object whisky {
  method rendimientoQueOtorga(dosisConsumida, unDeportista) {
    return 0.9 ** dosisConsumida
  }
}
object terere {
  method rendimientoQueOtorga(dosisConsumida, unDeportista) {
    return (0.1 * dosisConsumida).max(1)
  }
}
object cianuro {
  method rendimientoQueOtorga(dosisConsumida, unDeportista) {
    return if (tito.peso() > 70) tito.peso() * 0.01 + dosisConsumida else 0 
  }
}