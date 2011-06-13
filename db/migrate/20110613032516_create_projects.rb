class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :status
      t.integer :tag_id

      t.timestamps
    end
    
    add_index :projects, :name
    add_index :projects, :status
    add_index :projects, :tag_id
  end

  def self.down
    drop_table :projects
  end
end
