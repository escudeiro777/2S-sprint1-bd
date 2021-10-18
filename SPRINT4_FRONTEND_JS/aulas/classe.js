class retangulo {
    constructor(altura, largura) {
        this.altura = altura
        this.largura = largura
    }
}

class animal {
    constructor(nome) {
        this.nome = nome
    }
    falar() {
        console.log(this.nome + 'emite um barulho')
    }
}

class cachorro extends animal {
    falar() {
        console.log(this.nome + 'latido')
    }
}

let cachorro = new cachorro("auau")
cachorro.falar()