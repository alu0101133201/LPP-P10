RSpec.describe Pract6 do

  before (:all) do

    @alimento1 = Alimento.new("Tofu", 8.0, 1.9, 4.8, 2.0, 2.2)

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

    it "El método to_s funciona correctamente" do

      expect(@alimento1.to_s).to eq("Tofu, 8.0, 1.9, 4.8, 2.0, 2.2")

    end

  end
end
