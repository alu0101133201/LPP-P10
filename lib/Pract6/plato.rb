#lase que definirá la clase plato

class Plato

  include Comparable  
  
  attr_accessor :nombre,:alimentos,:cantidades 

  def initialize(nombre,alimentos,cantidades)

    @nombre = nombre
    @alimentos = alimentos
    @cantidades = cantidades

  end


  def to_s

    cadena = ""
    x = @alimentos.head
    y = @cantidades.head
  
    while (x != nil)

      cadena << "["
      cadena << "#{x.value.nombre}"
      cadena << ","
      cadena << "#{y.value}"
      cadena << "] " 
      y = y.next
      x = x.next

    end
    return cadena
  end

  def <=>(other)
       vct <=> other.vct 
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


  def vct

    gramos_totales = @cantidades.sum

    p_p = porcentaje_prot
    p_h = porcentaje_hid
    p_l = porcentaje_lip

    g_p = (gramos_totales*p_p)/100
    g_h = (gramos_totales*p_h)/100
    g_l = (gramos_totales*p_l)/100
 
    energia_total = g_p*4 + g_h*4 + g_l*9    
    return energia_total.round(2)
 

  end



end
