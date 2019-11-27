#Clase que definirá la clase plato

class Plato

  
    attr_accessor :nombre,:alimentos,:cantidades 

  def initialize(nombre,alimentos,cantidades)

    @nombre = nombre
    @alimentos = alimentos
    @cantidades = cantidades

  end

  def porcentaje_prot

    gramos_totales = @cantidades.sum
    
    x = @alimentos.head
    y = @cantidades.head
    total = 0

    while (x != nil)    
      porcentaje_individual = (y.value*100)/gramos_totales 
      total += (x.value.proteinas * porcentaje_individual)/100      
      x = x.next
    end

    return total.round(2)

  end

  def porcentaje_lip

    gramos_totales = @cantidades.sum
    
    x = @alimentos.head
    y = @cantidades.head
    total = 0

    while (x != nil)    
      porcentaje_individual = (y.value*100)/gramos_totales 
      total += (x.value.lipidos * porcentaje_individual)/100      
      x = x.next
    end

    return total.round(2)
  end




  def porcentaje_hid

    gramos_totales = @cantidades.sum
    
    x = @alimentos.head
    y = @cantidades.head
    total = 0

    while (x != nil)    
      porcentaje_individual = (y.value*100)/gramos_totales 
      total += (x.value.carbohidratos * porcentaje_individual)/100      
      x = x.next
    end

    return total.round(2)

  end

end
