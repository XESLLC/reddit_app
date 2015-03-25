class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :reply
      t.integer :commenter_id
      t.integer :post_id
    end
  end
end
