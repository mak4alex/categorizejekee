class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :category_id
      t.integer :product_id

      t.timestamps
    end
    add_index(:matches, [:category_id, :product_id], unique: true)
  end
end
