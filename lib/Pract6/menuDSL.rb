#Clase que definirá un menúDSL
# Autor:: Sergio Guerra Arencibia


class MenuDSL

  attr_accessor :name, :desc, :componentes

  def initialize(name,&block)
  
    @name = name
    @componentes = []

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

  def componente(args={})

    temporal = []
    temporal << "#{args[:descripcion] }" if args[:descripcion]
    temporal << "#{args[:plat]} " if args[:plat]
    temporal << "#{args[:precio]}" if args[:precio]

    @componentes << temporal

  end


end
