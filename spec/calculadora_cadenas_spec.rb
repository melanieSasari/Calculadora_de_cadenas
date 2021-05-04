RSpec.describe "calculadora de cadenas" do
    it "Deberia devolver 1 si la cadena es 1" do
        expect(sumar("1")).to eq 1
    end
    it "Deberia devolver 3 si la cadena es 3" do
        expect(sumar("3")).to eq 3
    end
    it "Deberia devolver 8 si la cadena es '5,3'" do
        expect(sumar("5,3")).to eq 8
    end
end
def sumar(cadena_numeros)
    numeros=cadena_numeros.split(/[,\s]/)
    numerosInt=numeros.map{|i| i.to_i if i.to_i<1001 }.compact
    suma=numerosInt.sum()
end
