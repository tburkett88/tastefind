class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :userid
      t.integer :restid
      t.integer :rating

      t.timestamps null: false
    end
  end
end
