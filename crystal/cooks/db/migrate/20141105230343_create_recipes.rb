class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.boolean :public
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
