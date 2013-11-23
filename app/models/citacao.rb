class Citacao < ActiveRecord::Base
  belongs_to :livro

  validates :livro, presence: true

  def formata
  	"#{self.trecho} [#{self.livro.sobrenome.upcase}, #{self.livro.primeiro_nome}. #{self.livro.ano_da_publicacao}]"
  end
end
