//chamando novo objeto
var Carro = new Object();

Carro.Marca = "Fiat";
Carro.Modelo = "Uno";
Carro.Cor = "Vermelho"
Carro.Ligar = false;

Carro.Partida = function() {
    Carro.Ligar = true;
}

console.log(Carro)

Carro.Partida(Carro);