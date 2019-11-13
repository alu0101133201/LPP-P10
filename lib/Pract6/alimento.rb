#Clase que define un alimento


class Alimento

  attr_reader :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

  def initialize (n,p,c,l,g,t)

    @nombre,@proteinas,@carbohidratos,@lipidos = n, p, c, l
    @gei,@terreno = g, t

  end


end
