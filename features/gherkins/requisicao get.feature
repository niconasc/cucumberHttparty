#language: pt
#author: Nicolai Peixoto

@requisicao
Funcionalidade: Realizar requisições GET

    
    Cenário: Realizar requisição GET
        Dado que eu possua o endPoint de "GET"
        Quando eu realizar a requisição
        Então devo obter o código de retorno 200