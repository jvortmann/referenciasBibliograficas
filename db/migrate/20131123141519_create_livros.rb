class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :titulo
      t.integer :ano_da_publicacao
      t.string :autores
      t.string :cidade
      t.string :editora
      t.integer :edicao
      t.string :palavras_chave

      t.timestamps
    end
  end
end
