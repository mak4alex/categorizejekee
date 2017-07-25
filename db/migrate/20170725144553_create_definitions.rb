class CreateDefinitions < ActiveRecord::Migration[5.1]
  def change
    create_table :definitions do |t|
      t.string :name
      t.integer :project_id

      t.timestamps
    end
    add_index(:definitions, [:name, :project_id], unique: true)
  end
end
