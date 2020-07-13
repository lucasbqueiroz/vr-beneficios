# frozen_string_literal: true

module Endereco
  include HTTParty

  base_uri 'https://viacep.com.br/ws'

  format :json
  headers Accept: 'application/vnd.taskmanager.v2',
          'Content-Type': 'application/json'
end
