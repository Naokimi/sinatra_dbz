class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :team
      t.string :user
      t.string :url
      t.string :ip_address
      t.timestamps null: false
    end
  end
end
