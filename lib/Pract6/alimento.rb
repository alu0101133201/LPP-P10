#Clase que define un alimento


class Alimento

  attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

  def initialize (n,p,c,l,g,t)

    @nombre,@proteinas,@carbohidratos,@lipidos = n, p, c, l
    @gei,@terreno = g, t

  end

  def prot(cantidad)
    return(@proteinas*(cantidad/100))  
  end

  def ch(cantidad)
    return(@carbohidratos*(cantidad/100))
  end

  def lip(cantidad)
    return(@lipidos*(cantidad/100))
  end

  def g(cantidad)
    return(@gei*(cantidad/100))
  end

  def t(cantidad)
    return(@terreno*(cantidad/100))
  end




  def to_s
  
    "(#{@nombre}, #{@proteinas}, #{@carbohidratos}, #{@lipidos}, #{@gei}, #{@terreno})"

  end

  def energia(cantidad)

    (prot(cantidad)*4.0) + (ch(cantidad)*4.0) + (lip(cantidad)*9.0)

  end

  def energia_mayor(alimento)

    raise TypeError, "Se espera como argumento un alimento" unless alimento.is_a?Alimento

    if(energia(100) > alimento.energia(100))
      return true
 
    else
      return false
    end
 
  end

end

