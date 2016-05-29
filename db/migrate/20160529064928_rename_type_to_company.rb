class RenameTypeToCompany < ActiveRecord::Migration
  def change
    rename_column :expressages, :type, :company
  end
end
