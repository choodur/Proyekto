class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :ticket_id

      t.timestamps
    end
    
    add_index :comments, :ticket_id
  end

  def self.down
    drop_table :comments
  end
end
