class CreateOfficers < ActiveRecord::Migration[6.0]
  def change
    create_table :officers do |t|
      t.references :account, null: false, foreign_key: true
      t.string :weekday
      t.string :am_pm

      t.timestamps
    end
  end
end
