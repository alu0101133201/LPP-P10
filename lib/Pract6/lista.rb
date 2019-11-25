#Definicióin de clase que implementa una lista doblemente enlazada

class Lista

  attr_reader :head, :tail

  def initialize
  
    @head = nil
    @tail = nil
    
  end


  def to_s

    string = "" 

    if(@head == nil)
      return string
    end

    x = @head

    while x.next != nil
      aux = x.value
      string << "#{aux},"
      x = x.next
    end

    string << "#{x.value}"
  
  return string 


  end

  def vacia
  
    if(@head == nil)
      return true

    else
      return false
    end

  end

  def insertar_cabeza(x)

   nodo = Nodo.new(x,nil,nil) 

    if(@head == nil)
        @head = nodo 
        @tail = nodo
    
    else 
      @head.prev = nodo
      nodo.next = @head
      @head = nodo

  end
end
  
  def insertar_cola(x)


   nodo = Nodo.new(x,nil,nil) 
   
    if(@head == nil)
        @head = nodo
        @tail = nodo

     else
        
      @tail.next = nodo
      nodo.prev = @tail
      @tail = nodo  

    end

  end


  def insertar_multi_cabeza(array)

    array.reverse.each { |x| insertar_cabeza(x) }


  end

  def insertar_multi_cola(array)
  
    array.each { |x| insertar_cola(x) }

  end

  def extraer_cabeza
  
    if(@head != nil)

      x = @head
      
      @head = x.next
      x.next = nil
      @head.prev = nil
     
     if(@tail == x)
        @tail = @head
      end 

 
      return x.value
    end

    return @head
  
  end


  def extraer_cola

    if(@tail != nil)

      x = @tail
      
      @tail = x.prev
      x.prev = nil
      @tail.next = nil

      if(@head == nil)
        @head = @tail
      end

    return x.value

    end

    return @tail

  end

end



















