class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :project_id

      t.timestamps
    end
    add_index(:categories, [:name, :project_id], unique: true)
  end
end
