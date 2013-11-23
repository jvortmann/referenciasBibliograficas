class Livro < ActiveRecord::Base
  has_many :citacaos

  validates :ano_da_publicacao, numericality: { only_integer: true, greater_than: 0 }

  def primeiro_nome
  	self.autores.split(",").last
  end

  def sobrenome
  	self.autores.split(",").first
  end

  def abnt
  	"#{self.autores}. #{self.titulo}. #{self.cidade}: #{self.editora}, #{self.ano_da_publicacao}."
  end
end
