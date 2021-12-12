class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, limit: 100, unique: true, null: false, default: '', index: true
      t.string :password_digest, limit: 256, null: false, default: ''
      t.integer :role, limit: 2, null: false, default: 1, unsigned: true

      t.timestamps
    end
  end
end
