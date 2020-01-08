#Clase que definirá el DSL de plato
# Author:: Serigo Guerra Arencibia

class PlatoDSL


  attr_accessor :name, :desc, :alimentos

  def initialize(name, &block)
    
    @name = name
    @alimentos = []


    if block_given?  
      if block.arity == 1
        yield self
      else
       instance_eval(&block) 
      end
    end

  end



  def descripcion(texto)

    @desc = texto

  end

  def alimento(args={})
    
    temporal = []
    temporal << args[:alim]   if args[:alim]
    temporal << "#{args[:gramos]}" if args[:gramos]
  
    @alimentos << temporal
 
  end

  def gei
    sum = 0
    for i in alimentos
      sum += i[0].g(i[1].to_i)
    end
    return sum
  end

  def ter
    sum = 0
    for i in alimentos
      sum += i[0].t(i[1].to_i)
    end
    return sum
  end

  def p
    sum = 0
    for i in alimentos
      sum += i[0].prot(i[1].to_i)
    end
    return sum
  end
  def c
    sum = 0
    for i in alimentos
      sum += i[0].ch(i[1].to_i)
    end
    return sum
  end
  def l
    sum = 0
    for i in alimentos
      sum += i[0].lip(i[1].to_i)
    end
    return sum
  end





  def to_s
    
    cadena = ""
    cadena << name
    cadena << " - "
    cadena << desc
    cadena << " -> "
    
    for i in alimentos
      cadena << i[0].nombre
      cadena << "-"
      cadena << i[1]
      cadena << " ; "
    end
    return cadena
  end




end
