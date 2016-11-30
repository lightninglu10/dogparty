class CreateParty < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :user_id
end
