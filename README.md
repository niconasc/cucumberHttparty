# Automação Siena
Este projeto tem como objetivo automatizar os testes regressivos do sistema **Siena**

## Tecnologias utilizadas
* [Ruby 2.6.3](https://www.ruby-lang.org/pt/downloads/) - Program Language
* [Bundler 2.1.4](https://bundler.io) - Dependency Manager
* [HTTParty 0.17.3](https://www.rubydoc.info/github/jnunemaker/httparty/HTTParty) - Connector to HTTP protocol
* [Report Builder 1.8](https://github.com/rajatthareja/ReportBuilder/) - Cucumber Pretty Report
* [Cucumber 3.1.2](https://cucumber.io/) - BDD
* [Rspec 3.9](https://rspec.info) - Behavior Driven Development Framework
* [Parallel Test 2.30.1](https://rubygems.org/gems/parallel_tests) - Parallel Execution Plugin

## Versionamento
Nós utilizamos [GIT](https://git-scm.com/) para versionamento.  

## IDE
Utilize o Editor de texto de sua preferência.

## Configurando o ambiente

 * Faça o download do Ruby [clicando aqui](https://www.ruby-lang.org/pt/downloads/)
 * Siga os passos de instalação conforme o link de [instalação do ruby](https://www.ruby-lang.org/pt/documentation/installation/)
 * Execute o comando `gem install bundle` e aguarde o término da instalação.

## Entendendo a arquitetura do framework

**Onde e como executo os testes ?! :**
  * Pelo terminal acesse a pasta raiz do projeto e execute o comando `bundle install` (necessário apenas na primeira execução ou após atualização das gems).

    **Execução dos testes em paralelo com Cucumber Report :**
    * Execute `bundle exec parallel_cucumber features/`

    **Execução dos testes com Report Builder :**
    * Execute `cucumber -t @all --format json --out log/report/final_report.json`
      Editar no `@all` a tag do teste ou da suíte que deseja executar, conforme exemplo abaixo :

    |             ```@get```                |          ```@all```          |
    |:-------------------------------------:|:----------------------------:|
    |Executa todos os testes com a tag @get | Todos os testes do projeto   |

**Onde encontro as features ?! :** 

As `features` para consulta das tags estão no caminho:
> features/gherkins

Package com os `Steps` :
> features/step_definitions

## REPORT

O framework possui o `report` gerado em HTML exibindo todo resumo e detalhe da execução que pode ser aberto por qualquer navegador:

* Quando a execução é realizada pelo bundle (testes paralelos) a pasta com o `report` é o endereço abaixo com um report para cada thread de execução:
> log/parallel_test

* Quando a execução é realizada pelo cucumber a pasta com o `report` é o endereço abaixo:
> log/report


## Autor
* **_Nicolai Peixoto_** - *Email :* - [Nicolai Peixoto](nicolai_nascimento@hotmail.com)

![](https://media.giphy.com/media/l0HlHFRbmaZtBRhXG/giphy.gif)
