class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.boolean :coming
      t.string :name
      t.integer :guests

      t.timestamps
    end
  end
end
