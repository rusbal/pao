class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :type, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end