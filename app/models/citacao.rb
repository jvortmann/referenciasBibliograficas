class Citacao < ActiveRecord::Base
  belongs_to :livro

  validates :livro, presence: true
end
