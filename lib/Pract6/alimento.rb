# = Clase que define un alimento
# Autor:: Sergio Guerra Arencibia


class Alimento

  include Comparable


  # == Atributos de un alimento. Cantidades para 100g
  # Nombre del alimento, proteinas, carbohidratos, lípidos
  # gases de efecto invernadero y terreno en m^2
  attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

  # === Método initialize
  # Inicializa la el alimento con sus valores asignados
  # Parámetros que recibe: nombre, proteinas, carbohidratos, lípidos, gei y terreno
  def initialize (n,p,c,l,g,t)

    @nombre,@proteinas,@carbohidratos,@lipidos = n, p, c, l
    @gei,@terreno = g, t

  end

  # === Método prot 
  # método que devuelve la cantidad de proteinas
  # Recibe la cantidad de alimento para la que se quieren calcular las proteinas
  def prot(cantidad)
    return(@proteinas*(cantidad/100))  
  end

  # === Método ch 
  # método que devuelve la cantidad de carbohidratos
  # Recibe la cantidad de alimento para la que se quieren calcular los carbohidratos
  def ch(cantidad)
    return(@carbohidratos*(cantidad/100))
  end

  # === Método lip
  # método que devuelve la cantidad de lipidos
  # Recibe la cantidad de alimento para la que se quieren calcular los lípidos
  def lip(cantidad)
    return(@lipidos*(cantidad/100))
  end

  # === Método g
  # método que devuelve la cantidad de gases
  # Recibe la cantidad de alimento para la que se quieren calcular los gases efecto invernadero emitidos
  def g(cantidad)
    return(@gei*(cantidad/100))
  end

  # === Método t
  # método que devuelve la cantidad de terreno
  # Recibe la cantidad de alimento para la que se quieren calcular el terreno usado
  def t(cantidad)
    return(@terreno*(cantidad/100))
  end




  # === Método to_s 
  # Convierte la lista a string  
  def to_s
  
    "(#{@nombre}, #{@proteinas}, #{@carbohidratos}, #{@lipidos}, #{@gei}, #{@terreno})"

  end

  # === Método energia 
  # Devuelve la cantidad 
  # Recibe la cantidad de alimento para la que se quieren calcular la energía
  def energia(cantidad)

    (prot(cantidad)*4.0) + (ch(cantidad)*4.0) + (lip(cantidad)*9.0)

  end

  # === Método energia_mayor 
  # Devuelve el alimento con mayor energía  
  # Recibe otro objeto alimento
  def energia_mayor(alimento)

    raise TypeError, "Se espera como argumento un alimento" unless alimento.is_a?Alimento

    if(energia(100) > alimento.energia(100))
      return true
 
    else
      return false
    end
 
  end



  # === Método <=> 
  # Método para hacer la clase comparable
  # Recibe otro objeto alimento
  def <=>(other)
    energia(100) <=> other.energia(100)
  end







end

