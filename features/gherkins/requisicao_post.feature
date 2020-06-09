#language: pt
#author: Nicolai Peixoto

@requisicao
Funcionalidade: Realizar requisições POST

    Cenário: Realizar requisição POST
        Dado que eu possua o endPoint de "POST"
        Quando eu realizar a requisição
        Então devo obter o código de retorno 200
