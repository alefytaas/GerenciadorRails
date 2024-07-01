class CreateTarefas < ActiveRecord::Migration[7.1]
  def change
    create_table :tarefas do |t|
      t.string :titulo
      t.text :descricao
      t.boolean :completo

      t.timestamps
    end
  end
end
