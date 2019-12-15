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


  def huella_nutricional

    i_energia = alimentos.zip(cantidades).collect do |alimento, cantidad| 

      if(alimento.energia(cantidad) > 830)
        3.0
      elsif(alimento.energia(cantidad) < 670) 
        1.0 
      else 
        2.0
      end
    end

    i_g = alimentos.zip(cantidades).collect do|alimento, cantidad| 

      if(alimento.g(cantidad) < 800) 
        1.0 
      elsif(alimento.g(cantidad) > 1200) 
        3.0
      else 
        2.0
      end

    end

    i_t_e = i_energia.sum
    i_t_g = i_g.sum

    return(((i_t_e+i_t_g)/(alimentos.count*2)).round(2))

  end

  def <=>(other) 

    huella_nutricional <=> other.huella_nutricional

  end
end
