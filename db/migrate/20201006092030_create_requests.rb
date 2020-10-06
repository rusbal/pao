class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :client, null: false, foreign_key: true
      t.string :nature
      t.string :status

      t.timestamps
    end
  end
end
