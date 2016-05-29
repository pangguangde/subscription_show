class AddStatusToExpressage < ActiveRecord::Migration
  def change
    add_column :expressages, :status, :int
  end
end
