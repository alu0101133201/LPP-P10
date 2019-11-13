#Clase que define un alimento


class Alimento

  attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

  def initialize (n,p,c,l,g,t)

    @nombre,@proteinas,@carbohidratos,@lipidos = n, p, c, l
    @gei,@terreno = g, t

  end


  def to_s
  
    "(#{@nombre}, #{@proteinas}, #{@carbohidratos}, #{@lipidos}, #{@gei}, #{@terreno})"

  end

  def energia(cantidad)

    (@proteinas*4.0) + (@carbohidratos*4.0) + (@lipidos*9.0)

  end



end
