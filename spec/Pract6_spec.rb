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


    @esp = [ @alim3,@alim5,@alim9 ]
    @vas = [ @alim1,@alim3,@alim2,@alim5,@alim7 ]
    @vegetariana = [ @alim8,@alim4,@alim3,@alim9,@alim5 ]
    @vegetaliana = [ @alim8,@alim3,@alim9,@alim5 ]
    @c = [ @alim1,@alim10,@alim11,@alim12,@alim5 ]
    
    @lista_platos = Lista.new



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

      expect(@lista.collect {|i| i.proteinas*2.0 }).to eq([16.0,1.0,43.0,50.0])
      expect(@lista.select { |i| i.proteinas == 0.5 }).to eq ([@alimento2])
      expect(@lista.max).to eq(@alimento4)
      expect(@lista.min).to eq(@alimento2)
      expect(@lista.sort).to eq([@alimento2,@alimento1,@alimento3,@alimento4])

    end
  end
end

RSpec.describe Plato do

  before (:all) do

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

    @listac = Lista.new
    @listae = Lista.new
    @listav = Lista.new

    @listav_c = Lista.new
    @listae_c = Lista.new
    @listac_c = Lista.new

    @listac.insertar_multi_cabeza( [ @alim1,@alim10,@alim11,@alim12,@alim5 ])
    @listae.insertar_multi_cabeza( [ @alim3,@alim5,@alim9 ])
    @listav.insertar_multi_cabeza( [ @alim1,@alim3,@alim2,@alim5,@alim7 ])

    @listav_c.insertar_multi_cabeza([50,50,50,50,100])
    @listae_c.insertar_multi_cabeza([100,50,150])
    @listac_c.insertar_multi_cabeza([50,50,50,50,50])

    @plato =  Plato.new("Plato de carne",@listac,@listac_c)
    @plato2 = Plato.new("Plato español",@listae,@listae_c)
    @plato3 = Plato.new("Plato vasco",@listav,@listav_c)
    

  end

  context "Pruebas relativas a la clase plato" do

    it "Prueba de que los obj. plato se instancian correctamente (obtención de atributos de manera correcta)" do

      expect(@plato.nombre).to eq("Plato de carne")
      expect(@plato.alimentos).not_to eq(nil)
      expect(@plato.alimentos.to_s).to eq("(carne_de_vaca, 21.1, 0.0, 3.1, 50.0, 164.0),(carne_de_cordero, 18.9, 0.0, 17.0, 20, 185.0),(queso, 25.0, 1.3, 33.0, 11.0, 41.0),(pollo, 20.6, 0.0, 5.6, 5.7, 7.1),(cerveza, 0.5, 3.6, 0.0, 0.24, 0.22)")
      expect(@plato.cantidades).not_to eq(nil)
      expect(@plato.cantidades.to_s).to eq("50,50,50,50,50") 

    end

    it "Prueba de los métodos que obtienen el tanto por ciento de los valores nutricionales de un plato" do

      expect(@plato.porcentaje_prot).to eq(17.22)
      expect(@plato.porcentaje_lip).to eq(11.74)
      expect(@plato.porcentaje_hid).to eq(0.98)

    end

    it "Prueba de obtención del valor calórico total de un plato" do

      expect(@plato.vct).to eq(446.15)
      expect(@plato2.vct).to eq(971.16)
      expect(@plato3.vct).to eq(443.04)

    end

    it "Prueba del fromateo del plato (to_s)" do 

      expect(@plato.to_s).to eq("[carne_de_vaca,50] [carne_de_cordero,50] [queso,50] [pollo,50] [cerveza,50] ")

    end
  end

   context "Pruebas de módulos" do

    it "Pruebas de que las instancias son comparables" do
      expect(@plato > @plato2).to eq(false)
      expect(@plato < @plato2).to eq(true)
      expect(@plato <= @plato2).to eq(true)
      expect(@plato >= @plato2).to eq(false)
      expect(@plato == @plato2).to eq(false)
      expect(@plato == @plato).to eq(true)
      expect(@plato.between?(@plato2,@plato3)).to eq(false)
      expect(@plato2.clamp(@plato3,@plato)).to eq(@plato)

     end
   end


end


RSpec.describe Plato2 do


  before (:all) do

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

    @listac = Lista.new
    @listac_c = Lista.new
    @listac.insertar_multi_cabeza( [ @alim1,@alim10,@alim11,@alim12,@alim5 ])
    @listac_c.insertar_multi_cabeza([50,50,50,50,50])

    @plato = Plato2.new("locos por la carne",@listac,@listac_c)

    end

  context "Pruebas básicas de la clase plato2" do

    it "Prueba de obtención de las emisiones diarias de gei" do
      expect(@plato.gei).to eq(17.39)
    end

    it "Prueba de obtención de terreno usado" do
      expect(@plato.terreno).to eq(79.46)
    end

    it "Prueba de obtención de eficiencia energética formateada" do
      expect(@plato.to_s).to eq("Plato de la dieta 'locos por la carne'. gei: 17.39 Terreno: 79.46")
    end
  end
  
  context "Pruebas para comprobar la clase del objeto y su jerarquía" do

    it "Prueba para comprobar la clase del objeto" do
      
      expect(@plato.class).to eq(Plato2)

    end

    it "Prueba para comprobar el tipo del objeto" do
  
       expect(@plato.instance_of?Object).to eq (false)
       expect(@plato.instance_of?Plato2).to eq (true)

    end  

    it "Prueba para comprobar la jerarquía del objeto" do
  
       expect(@plato.is_a?Object).to eq (true)
       expect(@plato.is_a?Plato).to eq (true)
       expect(@plato.is_a?BasicObject).to eq (true)
       expect(@plato.is_a?Alimento).to eq (false)

    end  


  end

end




RSpec.describe Plato do

   before(:all) do

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

    @listac = Lista.new
    @listae = Lista.new
    @listav = Lista.new
    @listavegr = Lista.new
    @listavegl = Lista.new

    @listav_c = Lista.new
    @listae_c = Lista.new
    @listac_c = Lista.new
    @listavegr_c = Lista.new
    @listavegl_c = Lista.new

    @listac.insertar_multi_cabeza( [ @alim1,@alim10,@alim11,@alim12,@alim5 ])
    @listae.insertar_multi_cabeza( [ @alim3,@alim5,@alim9 ])
    @listav.insertar_multi_cabeza( [ @alim1,@alim3,@alim2,@alim5,@alim7 ])
    @listavegr.insertar_multi_cabeza( [ @alim8,@alim4,@alim3,@alim9,@alim5 ])
    @listavegl.insertar_multi_cabeza( [ @alim8,@alim3,@alim9,@alim5 ])

    @listav_c.insertar_multi_cabeza([100,100,100,100,150])
    @listae_c.insertar_multi_cabeza([250,150,200])
    @listac_c.insertar_multi_cabeza([50,50,50,50,50])
    @listavegr_c.insertar_multi_cabeza( [ 150,50,50,50,50 ])
    @listavegl_c.insertar_multi_cabeza( [ 200,50,50,50 ])

    @plato1 = Plato.new("Plato de carne",@listac,@listac_c)
    @plato2 = Plato.new("Plato español",@listae,@listae_c)
    @plato3 = Plato.new("Plato vasco",@listav,@listav_c)
    @plato4 = Plato.new("Plato vegetariano",@listavegr,@listavegr_c)
    @plato5 = Plato.new("Plato vegetaliano",@listavegl, @listavegl_c)



   end

   context "Batería de pruebas con platos de las 5 dietas" do

      it "Pruebas nutricionales" do

        expect(@plato1.porcentaje_prot < @plato5.porcentaje_prot).to eq(true)
        expect(@plato1.porcentaje_hid <= @plato2.porcentaje_hid).to eq(true)
        expect(@plato1.porcentaje_lip == @plato4.porcentaje_lip).to eq(false)
        expect(@plato5.porcentaje_lip >= @plato3.porcentaje_lip).to eq(true)
        expect(@plato2.porcentaje_prot < @plato5.porcentaje_prot).to eq(true)
        expect(@plato3.porcentaje_hid <= @plato1.porcentaje_hid).to eq(false)
        expect(@plato5.porcentaje_lip == @plato4.porcentaje_lip).to eq(false)
        expect(@plato4.porcentaje_lip >= @plato4.porcentaje_lip).to eq(true)

      end

      it "Pruebas energéticas" do
        expect(@plato1 == @plato4).to eq(false)
        expect(@plato2 > @plato3).to eq(true)
        expect(@plato3 <= @plato2).to eq(true)
        expect(@plato4 == @plato5).to eq(false)
        expect(@plato5 > @plato1).to eq(true)
        expect(@plato1 < @plato2).to eq(true)
        expect(@plato2 > @plato2).to eq(false)
        expect(@plato4 > @plato3).to eq(true)
    
      end



   end
end



RSpec.describe Lista do

   before(:all) do

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

    @listac = Lista.new
    @listae = Lista.new
    @listav = Lista.new
    @listavegr = Lista.new
    @listavegl = Lista.new

    @listav_c = Lista.new
    @listae_c = Lista.new
    @listac_c = Lista.new
    @listavegr_c = Lista.new
    @listavegl_c = Lista.new

    @listac.insertar_multi_cabeza( [ @alim1,@alim10,@alim11,@alim12,@alim5 ])
    @listae.insertar_multi_cabeza( [ @alim3,@alim5,@alim9 ])
    @listav.insertar_multi_cabeza( [ @alim1,@alim3,@alim2,@alim5,@alim7 ])
    @listavegr.insertar_multi_cabeza( [ @alim8,@alim4,@alim3,@alim9,@alim5 ])
    @listavegl.insertar_multi_cabeza( [ @alim8,@alim3,@alim9,@alim5 ])

    @listav_c.insertar_multi_cabeza([100,100,100,100,150])
    @listae_c.insertar_multi_cabeza([250,150,200])
    @listac_c.insertar_multi_cabeza([50,50,50,50,50])
    @listavegr_c.insertar_multi_cabeza( [ 150,50,50,50,50 ])
    @listavegl_c.insertar_multi_cabeza( [ 200,50,50,50 ])

    @plato1 = Plato.new("Plato de carne",@listac,@listac_c)
    @plato2 = Plato.new("Plato español",@listae,@listae_c)
    @plato3 = Plato.new("Plato vasco",@listav,@listav_c)
    @plato4 = Plato.new("Plato vegetariano",@listavegr,@listavegr_c)
    @plato5 = Plato.new("Plato vegetaliano",@listavegl, @listavegl_c)


    @lista_plato = Lista.new
    @lista_plato.insertar_multi_cabeza( [@plato1,@plato2,@plato4,@plato3,@plato5] )

  end

  context "Pruebas respecto a la enumeración de listas de platos" do

      it "Pruebas de enumeración de lista de platos" do
        expect(@lista_plato.collect {|i| i.porcentaje_prot*2.0 }).to eq([34.44,36.08,54.6,18.18,59.28])
        expect(@lista_plato.select { |i| i.porcentaje_prot == 9.09 }).to eq([@plato3])
        expect(@lista_plato.max).to eq(@plato2)
        expect(@lista_plato.min).to eq(@plato1)
        expect(@lista_plato.sort).to eq([@plato1,@plato3,@plato4,@plato5,@plato2])
      end

  end
end





RSpec.describe Plato2 do

  before (:all) do

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

    @listac = Lista.new
    @listac_c = Lista.new
    @listae = Lista.new
    @listae_c = Lista.new
    @listav = Lista.new
    @listav_c = Lista.new
    @listavegr = Lista.new
    @listavegr_c = Lista.new

    @listac.insertar_multi_cabeza( [ @alim1,@alim10,@alim11,@alim12,@alim5 ])
    @listac_c.insertar_multi_cabeza([400,200,400,200,100])

    @listae.insertar_multi_cabeza( [ @alim3,@alim5,@alim9 ])
    @listae_c.insertar_multi_cabeza([1500,300,800])

    @listav.insertar_multi_cabeza( [ @alim1,@alim3,@alim2,@alim5,@alim7 ])
    @listav_c.insertar_multi_cabeza([1500,700,500,350,400])

    @listavegr.insertar_multi_cabeza( [ @alim8,@alim4,@alim3,@alim9,@alim5 ])
    @listavegr_c.insertar_multi_cabeza( [ 200,500,250,350,800 ])

    @plato1 = Plato2.new("plato de carne",@listac,@listac_c)
    @plato2 = Plato2.new("plato español",@listae,@listae_c)
    @plato3 = Plato2.new("plato vasco",@listav,@listav_c)
    @plato4 = Plato2.new("plato vegetariano",@listavegr,@listavegr_c)

    @menu_dietetico = [@plato1,@plato2,@plato3]
    @precios = [40,20,25]

    @menu_dietetico2 = [@plato1,@plato4,@plato3]
    @precios2 = [40,15,25]

  
  end

  context "Pruebas respecto a la modificación de la clase plato (práct 09)" do

    it "Prueba de la obtención de la huella nutricional de un plato" do
      
      expect(@plato1.huella_nutricional).to eq(1.2)
      expect(@plato2.huella_nutricional).to eq(1.67)
      expect(@plato3.huella_nutricional).to eq(1.6)
      expect(@plato4.huella_nutricional).to eq(1.3)

    end
    it "Prueba para la obtención del plato con máxima huella nutricional de un menú" do

      expect(@menu_dietetico.max).to eq(@plato2)
      expect(@menu_dietetico2.max).to eq(@plato3)

    end

    it "Prueba para aumentar el precio de los platos en proporcion al del plato con mayor huella nutricional" do

      expect(generar_precio(@menu_dietetico,@precios)).to eq([66.8,33.4,41.75])
      expect(generar_precio(@menu_dietetico2,@precios2)).to eq([64,24,40])
    end
  end
end




RSpec.describe PlatoDSL do

  before (:all) do

    @alim4 = Alimento.new("huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    @alim8 = Alimento.new("tofu", 8.0, 1.9, 4.8, 2.0, 2.2)

    alim4 = Alimento.new("huevos", 13.0, 1.1, 11.0, 4.2, 5.7)
    alim8 = Alimento.new("tofu", 8.0, 1.9, 4.8, 2.0, 2.2)

    @plato = PlatoDSL.new("Tofu con huevos") do
      descripcion "Sencillo plato de tofu con huevos"
      alimento alim: alim8,
               gramos: 200
      alimento alim: alim4,
               gramos: 200
    end

  end

  context "Pruebas de clase platoDSL" do

    it "Prueba de la instanciación correcta de un platoDSL" do

      
      expect(@plato.name).to eq("Tofu con huevos")
      expect(@plato.desc).to eq("Sencillo plato de tofu con huevos")
      expect(@plato.alimentos).to eq([[@alim8.to_s,"200"],[@alim4.to_s,"200"]])
      

    end
  end
end
