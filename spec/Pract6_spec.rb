RSpec.describe Pract6 do

  before (:all) do

    @alimento1 = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)
    @alimento2 = Alimento.new("Cerveza", 0.5, 3.6, 0.0, 0.24, 0.22)
    @alimento3 = Alimento.new("Cerdo", 21.5, 0.0, 6.3, 7.6, 11.0)


    array_alimentos = [ [@alimento1,150], [@alimento2,250], [@alimento3,500] ]


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

end
