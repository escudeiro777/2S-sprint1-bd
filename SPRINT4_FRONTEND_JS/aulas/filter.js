const numerosAleatorios = [1, 5, 6, 8, 41, 15]
const numeroMaior37 = numerosAleatorios.filter((item) => item > 37)
console.log(numeroMaior37)

function Maior37(value) {
    if (value > 37)
        return true
    else
        return false
}
var filtrado = [88, 40, 10, 5, 102, 1].filter(Maior37)
console.log(filtrado)

var numeros = [, 1, 2, 3, 4, 5, 6, 7, 8, 9];

function buscarPar(value) {
    if (value % 2 == 0)
        return true
    else
        return false
}
var numerosPares = numeros.filter(buscarPar)
console.log(numerosPares)