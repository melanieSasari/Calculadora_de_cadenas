RSpec.describe "calculadora de cadenas" do
    it "Deberia devolver 1 si la cadena es 1" do
        expect(sumar("1")).to eq 1
    end
    it "Deberia devolver 3 si la cadena es 3" do
        expect(sumar("3")).to eq 3
    end
    it "Deberia devolver 8 si la cadena es 6,2" do
        expect(sumar("6,2")).to eq 8
    end
    it "Deberia devolver el numero 15 si le pasamos la cadena 1,2,4,8"do
        expect(sumar("1,2,4,8")).to eq 15
    end
    it "Deberia devolver 6 si la cadena es 1\n2,3" do
        expect(sumar("1\n2,3")).to eq 6
    end
    it "Deberia devolver 2 si la cadena es 1000,2" do
        expect(sumar("1001,2")).to eq 2
    end
    it "Deberia devolver el numero 17 si le pasamos la cadena '//[;]\n 6;7;4'" do
        expect(sumar("//[;]\n6;7;4")).to eq 17
    end
end
def sumar(cadena_numeros)
    if (cadena_numeros.split(/\n/)[0].include?"//" )  
        delimitadores=((cadena_numeros.split(/\n/)[0].gsub"/","").gsub "[","").gsub "]",""
        numeros=cadena_numeros.split(/\n/)[1].split(Regexp.union(delimitadores.split("")))
    else
        numeros=cadena_numeros.split(/[,\s]/)
    end
    enteros=numeros.map{|i| i.to_i if i.to_i<=1000 }.compact
    suma=enteros.sum()
    return suma
end
