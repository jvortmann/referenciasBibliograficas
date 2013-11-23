class BuscaController < ApplicationController
  def index
  end

  def results
  	# SQL
  	# SELECT * FROM tabela WHERE campo LIKE %eu%
  	@livros = Livro.where(
  	  "palavras_chave LIKE '%#{params[:termo]}%'"
  	)
  end
end
