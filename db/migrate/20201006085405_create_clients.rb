class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.integer :age
      t.string :gender
      t.string :address
      t.string :email
      t.string :contact_number

      t.timestamps
    end
  end
end
