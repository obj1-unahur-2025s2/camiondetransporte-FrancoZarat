object knightRider {
    method peso() {
        return 500
    }
    method peligrosidad() {
        return 10
    }
}

object bumblebee {
    var esAuto = false
    method peso() {
        return 800
    }
    method peligrosidad() {
        return if (esAuto) 15 else 30
    }
    method ahoraRobot() {
         esAuto = false
    }
    method ahoraAuto() {
        esAuto = true
    }

}
object paqueteLadrillos {
    var cantidadLadrillos = 1
    method peso() {
        return cantidadLadrillos*2
    }
    method peligrosidad() {
        return 2
    }
    method nuevaCantidadLadrillos(nuevaCantidad) {
        cantidadLadrillos = nuevaCantidad
    }
}

object arenaAGranel {
    var peso = 1
    method peso() {
        return peso
    }
    method nuevoPeso(pesoNuevo) {
        peso=pesoNuevo
    }
    method peligrosidad() {
        return 1
    }

}

object bateriaAntiAerea {
    var tieneMisiles = false
    method peso() {
        return if (tieneMisiles) 300 else 200
    }
    method peligrosidad() {
        return if (tieneMisiles) 100 else 0
    }
    method cargarMisiles() {
        tieneMisiles = true
    }
    method descargarMisiles() {
        tieneMisiles = false
    }

}
object contenedorPortuario {
    const contenido = []
    method cargarCosa(nuevaCosa) {
        contenido.add(nuevaCosa) 
    }
    method eliminaarTodo() {
        contenido.clear()
    }
    method peso() {
        return 100 + contenido.fold(0,{acum,item => acum+item.peso()})
    }
    method peligrosidad() {
        if (contenido.isEmpty()) {
            return 0
        } else {
            return contenido.max({c => c.peligrosidad()}).peligrosidad()
        }
    }
}
object residuosRadioactivos {
    var peso = 1
    method nuevoPeso(pesoNuevo) {
        peso = pesoNuevo
    }
    method peligrosidad() {
        return 200
    }
    method peso() {
        return peso
    }
}
object embalajeDeSeguridad{
    var cosaEnvuelta = knightRider
    method peso() {
        return cosaEnvuelta.peso()
    }
    method peligrosidad() {
        return cosaEnvuelta.peligrosidad()/2
    }
    method cambiarCosa(nuevaCosa) {
        cosaEnvuelta = nuevaCosa
    }
}
