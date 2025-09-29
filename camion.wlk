object camion {
    const carga = []
    method cargarCosa(nuevaCosa) {
        carga.add(nuevaCosa)
    }
    method descargarCosa(unaCosa) {
        carga.remove(unaCosa)
    }
    method pesoTotal() {
        return 1000 + carga.fold(0, {c=>c.peso()})
    }
    method pesosPares() {
        return carga.all({c=>c.peso().even()})
    }
    method busquedaPorPesor(pesoBuscado) {
        return carga.any({item=>item.peso()==pesoBuscado})
    }
    method busquedaPorPeligrosidad(unaPeligrosidad) {
        return carga.find({c => c.peligrosidad()==unaPeligrosidad})
    }
    method listaDeCosasPeligrosas(peligrosidadMinima) {
        return carga.filter({c => c.peligrosidad()>peligrosidadMinima})

    }
    method estaExedidoDePeso() {
        return self.pesoTotal() > 2500
    }
    method puedeCirculorEnRuta(unaPeligrosidad) {
        return self.estaExedidoDePeso() and not //comentario de prueba
    }


}