#Clase que definirá la clase plato (padre)

class Plato

  include Comparable  
  
  # == Atributos de un plato 
  # nombre, alimentos ycantidades
  attr_accessor :nombre,:alimentos,:cantidades 

  # === Método initialize
  # Inicializa el plato con sus parámetros correspondientes
  # Parámetros: nombre, alimentos y cantidades
  def initialize(nombre,alimentos,cantidades)

    @nombre = nombre
    @alimentos = alimentos
    @cantidades = cantidades

  end


  # === Método to_s 
  # Convierte la lista a string  
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

  # === Método <=>
  # Hace que los platos sean comparables en función a su vct
  def <=>(other)
       vct <=> other.vct 
  end

  # === Método porcentaje_prot
  # Devuelve el porcentaje de proteinas que tiene el plato 
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

  # === Método porcentaje_lip
  # Devuelve el porcentaje de lípidos que tiene el plato 
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




  # === Método porcentaje_hid
  # Devuelve el porcentaje de carbohidratos que tiene el plato 
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

  # === Método vct
  # Devuelve la cantidad de vct del plato
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
