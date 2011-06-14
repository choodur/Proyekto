class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.boolean :member_add
      t.boolean :member_remove
      t.boolean :project_create
      t.boolean :project_read
      t.boolean :project_update
      t.boolean :project_delete
      t.boolean :ticket_create
      t.boolean :ticket_read
      t.boolean :ticket_update
      t.boolean :ticket_delete
      t.boolean :ticket_assign
      t.boolean :ticket_comment
      t.boolean :tag_create
      t.boolean :tag_read
      t.boolean :tag_update
      t.boolean :tag_delete

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
