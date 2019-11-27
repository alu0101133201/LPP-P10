class Plato2 < Plato

  def initialize(x,y,z)
    super(x,y,z)
  end


  def to_s

    string = ""
    
    string << "Plato de la dieta '#{nombre}'. "

    string << "gei: "
    string << "#{gei} "
    string << "Terreno: "
    string << "#{terreno}"

    return string

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


  def terreno

    gramos_totales = cantidades.sum

    x = alimentos.head
    y = cantidades.head
    total = 0

    while( x != nil)

      porcentaje_individual = (y.value*100)/gramos_totales
      total += (x.value.terreno * porcentaje_individual)/100
      x = x.next

    end
    return (total.round(2))

  end

end
