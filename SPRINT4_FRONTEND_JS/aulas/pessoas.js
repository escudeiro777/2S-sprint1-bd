//Declarar uma variável qualquer, que receba um objeto vazio.
var pessoa = new Object();
//Declarar uma variável `pessoa`, que receba suas informações pessoais.
pessoa.nome = "lucas";
pessoa.sobrenome = "lopes";
pessoa.sexo = "masc"
pessoa.idade = 17;
pessoa.altura = 1.81;
pessoa.peso = 67;
pessoa.andando = false;
pessoa.quantidadeDeMetrosAndados = 0;
//Crie um método chamado `nomeCompleto`, que retorne a frase:
pessoa.nomeCompleto = `Olá, meu nome é ${pessoa.nome} ${pessoa.sobrenome}!`
pessoa.mostrarIdade = `Olá, eu tenho ${pessoa.idade} anos!`
pessoa.mostrarPeso = `Eu peso ${pessoa.peso}Kg.`
pessoa.mostrarAltura = `Minha altura é ${pessoa.altura}m.`

//Adicione um método ao objeto `pessoa` chamado `fazerAniversario`.
pessoa.FazerAniversario = function() {
    pessoa.idade += 1
};

pessoa.FazerAniversario()

//Adicione um método ao objeto `pessoa` chamado `andar`
pessoa.andar = function(metrosCaminhados) {
    pessoa.quantidadeDeMetrosAndados += metrosCaminhados;

    pessoa.andando = true;
}
pessoa.andar(15);

//Adicione um método ao objeto `pessoa` chamado `parar`, que irá modificar o valor
//da propriedade `andando` para o valor booleano que representa "falso".

pessoa.parar = function() {
    pessoa.andando = false;
};


console.log(pessoa);