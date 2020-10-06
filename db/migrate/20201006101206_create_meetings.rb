class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.references :account, null: false, foreign_key: true
      t.references :request, null: false, foreign_key: true
      t.datetime :scheduled_at, null: false
      t.string :status

      t.timestamps
    end
  end
end
