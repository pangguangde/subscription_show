class CreateExpressages < ActiveRecord::Migration
  def change
    create_table :expressages do |t|
      t.string :type
      t.string :order
      t.string :history
      t.string :owner

      t.timestamps null: false
    end
  end
end
