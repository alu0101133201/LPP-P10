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

    @nodo1 = Nodo.new(15,nil,nil)


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

  context "Probando la clase nodo"
    
    it "Instanciación correcta del objeto nodo" do
  
      expect(@nodo1.value).to eq("15")
      expect(@nodo1.next).to eq(nil)      
      expect(@nodo1.prev).to eq(nil)      
      

    end
end
