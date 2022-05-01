class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :project_name, null: false
      t.datetime :start_date, null:false
      t.datetime :est_end_date
      t.boolean :completed, null:false

      t.timestamps
    end
  end
end
