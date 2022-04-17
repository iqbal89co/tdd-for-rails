class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.float :price
      t.belongs_to :category

      t.timestamps
    end
  end
end
