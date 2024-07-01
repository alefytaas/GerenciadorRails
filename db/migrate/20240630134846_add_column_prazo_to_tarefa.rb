class AddColumnPrazoToTarefa < ActiveRecord::Migration[7.1]
  def change
    add_column :tarefas, :prazo, :date
  end
end
