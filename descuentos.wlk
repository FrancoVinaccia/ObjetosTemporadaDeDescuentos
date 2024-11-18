import estim.*

class DescuentoDirecto{
  const porcentaje // un 35% de descuento se representaria con el valor 35
  method precio(precioBase) = precioBase*(porcentaje/100)
}
class DescuentoFijo{
  const montoFijo
  method precio(precioBase) = (precioBase-montoFijo).min(precioBase/2)
}
class DescuentoGratis{
  method precio(precioBase) = 0
}

class DescuentoNulo{
  method precio(precioBase) = precioBase
}

class DescuentoDirectoConTope inherits DescuentoDirecto{
  const tope
  override method precio(precioBase) = super(precioBase).min(tope)
}