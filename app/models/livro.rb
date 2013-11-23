class Livro < ActiveRecord::Base
  has_many :citacaos

  validates :ano_da_publicacao, numericality: { only_integer: true, greater_than: 0 }
end
