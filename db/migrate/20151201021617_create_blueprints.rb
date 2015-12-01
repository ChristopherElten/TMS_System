class CreateBlueprints < ActiveRecord::Migration
  def change
    create_table :blueprints do |t|
      t.string :coursecode
      t.integer :maxStudents
      t.integer :minStudents
      t.date :deadline
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :blueprints, [:user_id, :created_at]
  end
end
