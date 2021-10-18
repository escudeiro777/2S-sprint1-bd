// coleçao com dois itens
const produto = [{

        nome: "notebook",
        preco: 1002
    }, {
        nome: "smartphone",
        preco: 400
    }

]

const precoEmReais = produto.map(p => p.preco * 6);

console.log(precoEmReais)
const somaReal = precoEmReais.reduce((a, b) => a = b, 0)
console.log(somaReal)

const valorReal = produto.map(p => p.preco * 6).reduce((a, b) => a + b, 0)