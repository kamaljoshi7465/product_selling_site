class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.references :category
      t.string :image
      t.float :price
      t.string :satus

      t.timestamps
    end
  end
end
