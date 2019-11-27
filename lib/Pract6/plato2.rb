class Plato2 < Plato

  def initialize(x,y,z)
    super(x,y,z)
  end

  def gei

    gramos_totales = cantidades.sum

    x = alimentos.head
    y = cantidades.head
    total = 0

    while( x != nil)

      porcentaje_individual = (y.value*100)/gramos_totales
      total += (x.value.gei * porcentaje_individual)/100
      x = x.next

    end
    return (total.round(2))

  end


end
