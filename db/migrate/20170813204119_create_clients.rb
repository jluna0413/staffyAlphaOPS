class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :username
      t.text :about
      t.text :contact
      t.string :phone

      t.timestamps
    end
  end
end
