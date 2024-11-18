class Juego{
  const precioBase
  var descuento
  const property caracteristicas = []

  method precio() = descuento.precio(precioBase)
  method modificarDescuento(nuevoDescuento) {descuento = nuevoDescuento}
  
  method esAptoParaMenoresEn(pais) = pais.caracteristicasProhibidas().any{c => self.contieneCaracteristica(c)}
  method contieneCaracteristica(caracteristica) = caracteristicas.contains(caracteristica)
}