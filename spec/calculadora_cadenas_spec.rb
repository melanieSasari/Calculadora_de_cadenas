RSpec.describe "calculadora de cadenas" do
    it "Deberia devolver 1 si la cadena es 1" do
        expect(sumar("1")).to eq 1
    end
    it "Deberia devolver 3 si la cadena es 3" do
        expect(sumar("3")).to eq 3
    end
end
def sumar(cadena_numeros)
    cadena_numeros.to_i
end
