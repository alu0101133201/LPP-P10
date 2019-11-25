RSpec.describe Pract6 do

  before (:all) do

    @alimento1 = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @alimento2 = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @alimento3 = Alimento.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 11.0)
    @alimento4 = Alimento.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)

    @array1_alimentos = [ [@alimento1,1000.0], [@alimento2,500.0], [@alimento3,1500.0] ]
    @array2_alimentos = [ [@alimento1,1200.0], [@alimento4,500.0] ]
    @array3_alimentos = [ [@alimento1,200.0], [@alimento4,50.0] ]
    @array1_solucion_h = [135.2,188.1]
    @array2_solucion_h = [79,231.4]
    @array3_solucion_h = [-1,-1]


    @array4_alimentos = [ [@alimento1,700.0], [@alimento2,400.0], [@alimento3,1250.0] ]
    @array5_alimentos = [ [@alimento1,1000.0], [@alimento4,370.0] ]
    @array6_alimentos = [ [@alimento1,200.0], [@alimento4,50.0] ]
    @array4_solucion_m = [109.96,153.78]
    @array5_solucion_m = [60.7,173.7]
    @array6_solucion_m = [-1,-1]


  end

  context "Probando los getters y el to_s" do       

    it "Instanciación correcta del objeto alimento" do

      expect(@alimento1.nombre).to eq("Tofu")
      expect(@alimento1.proteinas).to eq(8.0)      
      expect(@alimento1.carbohidratos).to eq(1.9)      
      expect(@alimento1.lipidos).to eq(4.8)      
      expect(@alimento1.gei).to eq(2.0)      
      expect(@alimento1.terreno).to eq(2.2)      

    end

    it "Los getters por cantidad funcionan correctamente" do

      expect(@alimento1.prot(200)).to eq(16.0)      
      expect(@alimento1.ch(200)).to eq(3.8)      
      expect(@alimento1.lip(200)).to eq(9.6)      
      expect(@alimento1.g(200)).to eq(4.0)      
      expect(@alimento1.t(200)).to eq(4.4)      



    end

    it "El método to_s funciona correctamente" do

      expect(@alimento1.to_s).to eq("(Tofu, 8.0, 1.9, 4.8, 2.0, 2.2)")

  end

 end

  context "Probando métodos relativos a valor energético" do

    it "Obtención de información calórica de un elemento" do
      expect(@alimento1.energia(100)).to eq(82.8)      
    end

    it "Comparación para saber si un elemento es más calórico que otro" do
      expect(@alimento1.energia_mayor(@alimento2)).to eq(true)
    end

  end

  context "Probando las funciones relativas al impacto ambiental diario" do

    it "El calculo del impacto ambiental - hombre funciona correctamente" do
    
      expect(impacto_ambiental_h(@array1_alimentos)).to eq (@array1_solucion_h)      
      expect(impacto_ambiental_h(@array2_alimentos)).to eq (@array2_solucion_h)      
      expect(impacto_ambiental_h(@array3_alimentos)).to eq (@array3_solucion_h)      

    end

    it "El calculo del impacto ambiental - mujer funciona correctamente" do


      expect(impacto_ambiental_m(@array4_alimentos)).to eq (@array4_solucion_m)      
      expect(impacto_ambiental_m(@array5_alimentos)).to eq (@array5_solucion_m)      
      expect(impacto_ambiental_m(@array6_alimentos)).to eq (@array6_solucion_m)      
  
 
   end 
  end
end


RSpec.describe Nodo do

  before (:all) do
  
    @nodo1 = Nodo.new(15,nil,nil)

  end

  context "Pruebas básicas de la clase nodo" do
   
   it "Instanciación correcta del objeto nodo" do
 
      expect(@nodo1.value).to eq(15)
      expect(@nodo1.next).to eq(nil)      
      expect(@nodo1.prev).to eq(nil)      

    end

  end
end




RSpec.describe Lista do
 

 before (:all) do
  
    @lista1 = Lista.new
    @lista2 = Lista.new
    @l_e = Lista.new
    @l_v = Lista.new
    @l_vegetariana = Lista.new
    @l_vegetaliana = Lista.new
    @l_c = Lista.new
    

    #Alimentos

    @alim1 = Alimento.new("carne_de_vaca", 21.1, 0.0, 3.1, 50.0, 164.0)
    @alim2 = Alimento.new("chocolate", 5.3, 47.0, 30.0, 2.3, 3.4)
    @alim3 = Alimento.new("lentejas", 23.5, 52.0, 1.4, 0.4, 3.4)
    @alim4 = Alimento.new("huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @alim5 = Alimento.new("cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @alim6 = Alimento.new("leche_de_vaca", 3.3, 4.8, 3.2, 3.2, 8.9)
    @alim7 = Alimento.new("café", 0.1, 0.0, 0.0, 0.4, 0.3)
    @alim8 = Alimento.new("tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @alim9 = Alimento.new("nuez", 20.0, 21.0, 54.0, 0.3, 7.9)
    @alim10 = Alimento.new("carne_de_cordero", 18.9, 0.0, 17.0, 20, 185.0)
    @alim11 = Alimento.new("queso", 25.0, 1.3, 33.0, 11.0, 41.0)
    @alim12 = Alimento.new("pollo", 20.6, 0.0, 5.6, 5.7, 7.1)


    #española

    @esp = [ @alim3,@alim5,@alim9 ]

    #vasca

    @vas = [ @alim1,@alim3,@alim2,@alim5,@alim7 ]

    #vegetariana

    @vegetariana = [ @alim8,@alim4,@alim3,@alim9,@alim5 ]

    #vegetaliana


    @vegetaliana = [ @alim8,@alim3,@alim9,@alim5 ]


    #Carne
    
    @c = [ @alim1,@alim10,@alim11,@alim12,@alim5 ]
    

  end

  context "Pruebas básicas de la clase lista" do

    it "Instanciación correcta de la lista" do

      expect(@lista1.head).to eq(nil)
      expect(@lista1.tail).to eq(nil)

    end
  
    it "Prueba de que la lista está vacía" do
       expect(@lista1.vacia).to eq(true)
    end

    it "Prueba de que se puede insertar un elemento en la lista" do
      
      @lista1.insertar_cabeza(15)
    
      @lista2.insertar_cola(50)
          
      expect(@lista1.vacia).to eq(false)
      expect(@lista2.vacia).to eq(false)
    end

    it "Prueba de que el to_s funciona" do

      @lista1.insertar_cabeza(20)
      @lista1.insertar_cabeza(0)
      expect(@lista1.to_s).to eq("0,20,15")      

    end
  end

  context "Pruebas de la clase lista" do

    it "Prueba de que sepueden insertar varios elementos en la lista" do
      
      @lista1.insertar_multi_cabeza([2,1,100])
      expect(@lista1.to_s).to eq("2,1,100,0,20,15")
      @lista1.insertar_multi_cola([55,17])
      expect(@lista1.to_s).to eq("2,1,100,0,20,15,55,17")

    end

    it "Prueba de que se puede extraer el primer elemento de la lista" do

      expect(@lista1.extraer_cabeza).to eq(2)
      expect(@lista1.to_s).to eq("1,100,0,20,15,55,17")

    end
  
    it "Prueba de que se puede extraer el último elemento de la lista" do

      expect(@lista1.extraer_cola).to eq(17)
      expect(@lista1.to_s).to eq("1,100,0,20,15,55")


    end
  end
  
  context "Pruebas de las dietas" do
 
    
    it "Prueba de emisiones diarias de gei" do  
 
      @l_e.insertar_multi_cabeza(@esp)
      @l_v.insertar_multi_cabeza(@vas)
      @l_vegetariana.insertar_multi_cabeza(@vegetariana)
      @l_vegetaliana.insertar_multi_cabeza(@vegetaliana)
      @l_c.insertar_multi_cabeza(@c) 
     
      expect(gei_diario(@l_e,[500,300,400])).to eq(3.92)
      expect(gei_diario(@l_v,[200,200,200,200,300])).to eq(107.08)
      expect(gei_diario(@l_vegetariana,[300,100,100,100,100])).to eq(11.14)
      expect(gei_diario(@l_vegetaliana,[400,100,100,100])).to eq(8.94)
      expect(gei_diario(@l_c,[100,100,100,100,100])).to eq(86.94)
    end

    it "Prueba de emisiones anules de gei" do
      expect(gei_anual(@l_e,[500,300,400])).to eq(1430.8)
      expect(gei_anual(@l_v,[200,200,200,200,300])).to eq(39084.2)
      expect(gei_anual(@l_vegetariana,[300,100,100,100,100])).to eq(4066.1)
      expect(gei_anual(@l_vegetaliana,[400,100,100,100])).to eq(3263.1)
      expect(gei_anual(@l_c,[100,100,100,100,100])).to eq(31733.1)
    end

    it "Prueba de terreno usado a diario" do
      expect(t_diario(@l_e,[500,300,400])).to eq(49.26)
      expect(t_diario(@l_v,[200,200,200,200,300])).to eq(342.94)
      expect(t_diario(@l_vegetariana,[300,100,100,100,100])).to eq(23.82)
      expect(t_diario(@l_vegetaliana,[400,100,100,100])).to eq(20.32)
      expect(t_diario(@l_c,[100,100,100,100,100])).to eq(397.32)
    end

    it "Prueba de terreno usado anual" do
      expect(t_anual(@l_e,[500,300,400])).to eq(17979.9)
      expect(t_anual(@l_v,[200,200,200,200,300])).to eq(125173.1)
      expect(t_anual(@l_vegetariana,[300,100,100,100,100])).to eq(8694.3)
      expect(t_anual(@l_vegetaliana,[400,100,100,100])).to eq(7416.8)
      expect(t_anual(@l_c,[100,100,100,100,100])).to eq(145021.8)
    end

  end


end


RSpec.describe Alimento do

  before (:all) do

    @alimento1 = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @alimento2 = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @alimento3 = Alimento.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 11.0)
    @alimento4 = Alimento.new("Queso", 25.0, 1.3, 33.0, 11.0, 41.0)
    @alimento5 = Alimento.new("pollo", 20.6, 0.0, 5.6, 5.7, 7.1)

    @lista = Lista.new
    @lista.insertar_multi_cabeza([@alimento1,@alimento2,@alimento3,@alimento4])


  end 

  context "Pruebas de módulos" do

    it "Prueba de que los alimentos son comparables (a nivel energético)" do 

      expect(@alimento1 > @alimento2).to eq(true)
      expect(@alimento1 < @alimento2).to eq(false)
      expect(@alimento1 >= @alimento2).to eq(true)
      expect(@alimento1 <= @alimento1).to eq(true)
      expect(@alimento1 == @alimento1).to eq(true)
      expect(@alimento1.between?(@alimento2,@alimento4)).to eq(true)
      expect(@alimento2.clamp(@alimento1,@alimento4)).to eq(@alimento1)
   
    end

    it "Prueba de que la lista doblemente enlazada sea enumerable" do

      expect(@lista.collect { |i| i > @alimento5 }).to eq ([@alimento3,@alimento4])
      expect(@lista.select { |i| i.proteinas == 0.5 }).to eq ([@alimento2])
      expect(@lista.max).to eq(@alimento4)
      expect(@lista.min).to eq(@alimento2)
      expect(@lista.sort).to eq([@alimento4,@alimento3,@alimento1,@alimento2])

    end

  end

end





















