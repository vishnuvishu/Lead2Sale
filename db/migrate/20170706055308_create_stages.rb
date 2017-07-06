class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.text :description
      t.string :interest_level

      t.timestamps null: false
    end
  end
end
