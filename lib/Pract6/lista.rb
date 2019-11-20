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
end
