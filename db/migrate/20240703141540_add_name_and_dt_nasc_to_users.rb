class AddNameAndDtNascToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :dt_nasc, :date, null: false
  end
end
