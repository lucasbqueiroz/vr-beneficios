# frozen_string_literal: true

# cep valido

Dado('que informe o {string}') do |cep|
  @cep = cep
end

Quando('efetuar a requisição') do
  @result = Endereco.get("/#{@cep}/json/")
end

Então('os dados do endereço será retornado') do
  @rescep = @cep
  @endereco = @result.parsed_response
  log(@endereco['ibge'])
  expect(@endereco['cep']).to eq(@rescep)
end

# cep invalido

Dado('que informe um {string}') do |cepinvalido|
  @cepinvalido = cepinvalido
end

Quando('efetuar a requisição dos ceps') do
  @resultcepinvalido = Endereco.get("/#{@cepinvalido}/json/")
end

Então('retornará o {int}') do |response_code|
  expect(@resultcepinvalido.code).to eq(response_code)
end
