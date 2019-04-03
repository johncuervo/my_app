class ChangeStringForTitle < ActiveRecord::Migration[5.2]

  def self.down
    change_table :posts do |t|
      t.change :title, :string
    end
  end

  def self.up
    change_table :posts do |t|
      t.change :title, :text
    end
  end
end

#####
# 1 - Cambiar tipo de dato de una columna  => string -> text
# 2 - Cambiar nombre de la columna => name -> nombre
# 3 - Añadir nueva columna a la tabla  => AddxxxToxxxs column_name;data_type
# 4 - Eliminar una columna de la tabla => RemovexxxFromxxxs column_name:data_type
# 5 - Crear un nuevo modelo/tabla => rails g model ModelName column_name:data_type
# 6 - rails db:migrate - rails db:migrate:status - rails db:rollback
#####
