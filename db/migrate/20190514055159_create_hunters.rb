class CreateHunters < ActiveRecord::Migration[5.2]
  def change
    create_table :hunters do |t|

      t.string :name
      t.integer :power, default: 0
      t.integer :speed, default: 0
      t.integer :interigence, default: 0
      t.integer :technique, default: 0
      t.references :type

      t.timestamps
    end
  end
end
