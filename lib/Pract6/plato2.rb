#Clase que define el objeto plato 2. Es hijo de la clase plato
# Autor:: Sergio Guerra Arencibia

class Plato2 < Plato




  # === Método initialize
  # Inicializa la lista con sus atributos 3 atributos
  # Parámetros: nombre lista con los alimentos, lista con las cantidades 
  def initialize(x,y,z)
    super(x,y,z)
  end


  # === Método to_s 
  # Convierte la lista a string  
  def to_s

    string = ""
    
    string << "Plato de la dieta '#{nombre}'. "

    string << "gei: "
    string << "#{gei} "
    string << "Terreno: "
    string << "#{terreno}"

    return string

  end

  # === Método gei 
  # Devuelve los gases de efecto invernadero de un plato  
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


  # === Método terreno 
  # Devuelve el terreno necesario para la elaboración de un plato  
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


  # === Método huella_nutricional 
  # Devuelve la huella nutricional de un plato 
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

  
  # === Método <=>
  # Redefine el método <=> para hacer comparable en base a la huella nutricional 
  def <=>(other) 

    huella_nutricional <=> other.huella_nutricional

  end
end
