
    Dado("que eu possua o endPoint de {string}") do |metodo|

        @metodo = metodo
        @base_uri = "https://postman-echo.com"

        case @metodo
        when 'GET'
            @endPoint = "#{@base_uri}/get?foo1=bar1&foo2=bar2"
        when 'POST'
            @endPoint = "#{@base_uri}/post"
        when 'PUT'
            @endPoint = "#{@base_uri}/put"
        else
            
        end
    end
  
    Quando("eu realizar a requisição") do 
        rest = RestUtils.new

        @header = {
            "Accept": "application/json",
            "Content-Type": "application/json"
        }
        
        case @metodo
        when 'GET'
            @result = rest.get(@endPoint)
        when 'POST'
            body = {
                'foo1': 123456,
            }
            @result = rest.post(@endPoint, body, @header)

        when 'PUT'
            body = "Teste do Nicolai"
            
            @result = rest.put(@endPoint, body, @header)
        else
            
        end
    end
  
    Então("devo obter o código de retorno {int}") do |retorno|
        $result = @result
        $resultCode = @result.code
       expect(@result.code).to eql retorno 
    end