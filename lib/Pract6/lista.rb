# = Definición de clase que implementa una lista doblemente enlazada
# Autor:: Sergio Guerra Arencibia

class Lista

  include Enumerable

  # == Atributos típicos de uno lista doblemente enlazada
  # Cabeza y cola
  attr_reader :head, :tail

  # === Método initialize
  # Inicializa la lista con sus atributos apuntando a nulo (lista vacía)
  def initialize
  
    @head = nil
    @tail = nil
    
  end


  # === Método to_s 
  # Convierte la lista a string  
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

  # === Método vacia 
  # Método para saber si la lista está vacía o no. True vacía, false significa que contiene elementos  
  def vacia
  
    if(@head == nil)
      return true

    else
      return false
    end

  end

  # === Método insertar_cabeza
  # Método para insertar un elemento por la cabeza en la lista  
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
  
  # === Método insertar_cola
  # Método para insertar un elemento por la cola en la lista  
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


  # === Método insertar_multi_cabeza
  # Método para insertar varios elementos por la cabeza en la lista  
  def insertar_multi_cabeza(array)

    array.reverse.each { |x| insertar_cabeza(x) }


  end

  # === Método insertar_multi_cola
  # Método para insertar varios elementos por la cabeza en la cola
  def insertar_multi_cola(array)
  
    array.each { |x| insertar_cola(x) }

  end

  # === Método extraer_cabeza 
  # Método para extraer un elemento por la cabeza en la cabeza
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


  # === Método extraer_cola
  # Método para extraer un elemento por la cabeza en la cola
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


 # === Método each
 # Método para hacer la clase enumerable
  def each

    x = @head
    while (x != nil)
  
      yield x.value
      x = x.next

    end

  end







end



















