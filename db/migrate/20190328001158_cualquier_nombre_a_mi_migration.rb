class CualquierNombreAMiMigration < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :date_signed, :string
    add_column :users, :published, :boolean, default: false, null: false
    add_column :users, :code, :string, limit: 50
  end
end
