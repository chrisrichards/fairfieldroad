class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.integer :house_number
      t.string :road
      t.string :email_address

      t.timestamps
    end
  end
end
