class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :cor
      t.string :tamanho
      t.decimal :valor

      t.timestamps
    end
  end
end
