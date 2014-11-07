class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :percent

      t.timestamps
    end
  end
end
