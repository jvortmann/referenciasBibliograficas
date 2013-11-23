json.array!(@livros) do |livro|
  json.extract! livro, :titulo, :ano_da_publicacao, :autores, :cidade, :editora, :edicao, :palavras_chave
  json.url livro_url(livro, format: :json)
end
