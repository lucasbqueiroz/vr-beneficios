# language: pt

@consultas
Funcionalidade: Consultar endereço
Eu como usuário posso consultar um endereço através do CEP
    
@cepvalido
Esquema do Cenário: Consulta de endereço via CEP válido
    Dado que informe o '<cep>'
    Quando efetuar a requisição
    Então os dados do endereço será retornado
    Exemplos:
        | cep       |
        | 06140-040 |
        | 06327-110 |
        | 06606-190 |

@cepinvalido
Esquema do Cenário: Consulta de endereço via CEP inválido
    Dado que informe um '<cep invalido>'
    Quando efetuar a requisição dos ceps
    Então retornará o <codigo>
    Exemplos:
        | cep invalido |codigo|
        | testecep     | 400  |
        | 012356       | 400  |