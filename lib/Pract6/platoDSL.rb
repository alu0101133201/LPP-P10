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
    temporal << "#{args[:alim]}"   if args[:alim]
    temporal << "#{args[:gramos]}" if args[:gramos]
  
    @alimentos << temporal
 
  end


end
