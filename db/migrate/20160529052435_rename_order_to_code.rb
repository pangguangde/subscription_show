class RenameOrderToCode < ActiveRecord::Migration
  def change
    rename_column :expressages, :order, :code
  end
end
