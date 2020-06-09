#language: pt
#author: Nicolai Peixoto

@requisicao
Funcionalidade: Realizar requisições PUT

    Cenário: Realizar requisição PUT
        Dado que eu possua o endPoint de "PUT"
        Quando eu realizar a requisição
        Então devo obter o código de retorno 200
