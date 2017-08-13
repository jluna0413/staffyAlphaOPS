class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :location
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.text :requirements
      t.text :attire
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
