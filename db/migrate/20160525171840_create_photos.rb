class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :source
      t.text :caption

      t.timestamps

    end
  end
end
