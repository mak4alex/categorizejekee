class CreateValues < ActiveRecord::Migration[5.1]
  def change
    create_table :values do |t|
      t.integer :definition_id
      t.integer :product_id
      t.string :value
      t.string :type

      t.timestamps
    end

    add_index(:values, [:definition_id, :product_id], unique: true)
  end
end
