class AddUserIdToTarefas < ActiveRecord::Migration[7.1]
  def change
    add_reference :tarefas, :user, null: false, foreign_key: true
  end
end