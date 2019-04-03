class ChangeContentColumnName < ActiveRecord::Migration[5.2]
  def self.down
    rename_column :posts, :contenido, :content
  end

  def self.up
    rename_column :posts, :content, :contenido
  end
end
