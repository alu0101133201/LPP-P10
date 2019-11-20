#Definicióin de clase que implementa una lista doblemente enlazada

class Lista

  attr_reader :head, :tail

  def initialize
  
    @head = nil
    @tail = nil
    
  end


  def vacia
  
    if(@head == nil)
      return true

    else
      return false
    end

  end

  def insertar_cabeza(x)

    raise TypeError, "Se espera un nodo como argumento" unless x.is_a?Nodo

     if(@head == nil)
        @head = x
        @tail = x

     else
      
      x.next = @head
      @head.prev = x
      @head = x

     end
  end

  
  def insertar_cola(x)

    raise TypeError, "Se espera un nodo como argumento" unless x.is_a?Nodo

     if(@head == nil)
        @head = x
        @tail = x

     else
        
      @tail.next = x
      x.prev = @tail
      @tail = x  

    end

  end

  
end
