class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, index: true, unique: true
      t.string :password_digest
      # t.integer :articles_count, default: 0
      # t.integer :comments_count, default: 0

      t.timestamps
    end
  end
end
