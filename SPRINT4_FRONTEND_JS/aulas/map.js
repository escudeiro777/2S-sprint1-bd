// coleçao com dois itens
const produto = [{

        nome: "notebook",
        preco: 1002
    }, {
        nome: "smartphone",
        preco: 400
    }

]

// p = recebe o produto como argumento 
// => arroq
// de cada item pegamos o preco e multiplicamos por 6

const precoEmReais = produto.map(p => p.preco * 6);
//map recebe como parametro o que chamamos de funcao callback
//entao internamente o map vai utilizar essa funcao para realizar a nossa regra de negocio

console.log(precoEmReais)
console.log(produto)

var numeros = [1, 4, 9]
var listaDobrada = numeros.map(function(item) {
    console.log(item)
    return item * 2;
})

console.log(listaDobrada)

///
var fahrenheit = [0, 32, 45, 46, 47, 91, 93, 121]
var celsius = fahrenheit.map(function(item) {
    return Math.round((item - 32) * 5 / 9)
})

console.log(fahrenheit)
console.log(celsius)