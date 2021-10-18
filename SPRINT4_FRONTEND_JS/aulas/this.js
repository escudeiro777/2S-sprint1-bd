//=== igualdade na escrita
console.log(this);

// this representa o window que tem um obj chamado document
console.log(this.document === window.document); //true

// confirmação que o this é objeto global no caso do navegador = window
console.log(this.document === window);

this.a = 20
console.log(window.a)

function thisNaoEstrito() {
    console.log(this)
}

function thisEstrito() {
    'use strict'
    console.log(this)
}
thisNaoEstrito
thisEstrito

var carro = new Object();
carro.marca = "fiat"
carro.localizarMarca = function() {
    return this.marca
}
var moto = new Object();
moto.marca = "honda"
moto.localizarMarca = function() {
    return this.marca
}

console.log(carro.localizarMarca())
console.log(moto.localizarMarca())