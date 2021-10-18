const produto = [{

        nome: "notebook",
        preco: 2100
    }, {
        nome: "smartphone",
        preco: 400
    }

];
//a= acumulador
// b= oq eu quero processar, valor atual

//produto.reduce((a, b))
//produto.reduce((a, b) => , 0)

const total = produto.reduce((a, b) => a + b.preco, 0)

console.log(total)
var valores = [1.5, 2, 4, 10]
var somatoria = valores.reduce(function(total, item) {

    console.log("o valor do total nesse momento é:" + total)
    console.log("o valor do total nesse momento é:" + item)
    return total + item
}, 0)

console.log(somatoria)

var notas = [1.5, 2, 4, 10]
var media = notas.reduce((total, item, index, array) => {
    total += item
    if (index === array.length - 1)
        return total / array.length
    return total

}, 0)
console.log(media)