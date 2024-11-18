import descuentos.*

object estim{
  var juegos = []

  method juegoMasBarato() = juegos.min{juego => juego.precio()}
  method juegoMasCaro() = juegos.max{juego => juego.precio()}
	
  method aplicarDescuentoDirecto(porcentajeNuevo){
    if (porcentajeNuevo > 100) {throw new Exception(message = "No se puede aplicar un descuento del mas del 100%")}
    const juegosQueCumplen = juegos.filter{juego => juego.precio() > self.juegoMasCaro().precio()*0.75}
    const nuevoDescuento = new DescuentoDirecto(porcentaje = porcentajeNuevo)
	 	juegosQueCumplen.forEach{j => j.modificarDescuento(nuevoDescuento)}
  }

  method promedioJuegosAptosParaMenoresEn(pais) {
    const juegosAptos = juegos.filter{juego => juego.esAptoParaMenoresEn(pais)}
    const sumatoriaPrecios =  juegosAptos.sum{juego => juego.precio()}
    return sumatoriaPrecios / juegosAptos.size()
  }
}