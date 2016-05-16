class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.integer :category_id
      t.text :body
      t.integer :order
      t.boolean :is_published
      t.boolean :menu_display

      t.timestamps null: false
    end
  end
end
