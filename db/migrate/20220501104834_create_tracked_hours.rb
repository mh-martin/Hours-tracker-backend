class CreateTrackedHours < ActiveRecord::Migration[7.0]
  def change
    create_table :tracked_hours do |t|
      t.string :person_name, null: false
      t.float :hours, null: false
      t.string :classification, null: false
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end