class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :title
      t.text :content
      t.text :entry_id
      t.string :user_id
      t.string :text

      t.timestamps null: false
    end
  end
end
