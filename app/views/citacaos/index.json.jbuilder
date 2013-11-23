json.array!(@citacaos) do |citacao|
  json.extract! citacao, :trecho, :pagina_inicial, :palavras_chave, :livro_id
  json.url citacao_url(citacao, format: :json)
end
