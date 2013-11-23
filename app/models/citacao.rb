class Citacao < ActiveRecord::Base
  belongs_to :livro

  validates :livro, presence: true

  def formata
  	"#{self.trecho} [#{self.livro.autores.upcase}, #{self.livro.ano_da_publicacao}]"
  end
end
