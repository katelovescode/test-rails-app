class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto'
    create_table :users, id: :uuid do |t|
      t.date :birthdate, null: false
      t.string :name

      t.timestamps
    end
  end
end
