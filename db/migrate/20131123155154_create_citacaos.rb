class CreateCitacaos < ActiveRecord::Migration
  def change
    create_table :citacaos do |t|
      t.text :trecho
      t.integer :pagina_inicial
      t.string :palavras_chave
      t.references :livro, index: true

      t.timestamps
    end
  end
end
