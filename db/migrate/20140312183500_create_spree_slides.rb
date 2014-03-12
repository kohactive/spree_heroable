class CreateSpreeSlides < ActiveRecord::Migration
  def change
    create_table :spree_slides do |t|
      t.string :title
      t.text :body

      t.string :heroable_type, null: false
      t.integer :heroable_id, null: false
      t.integer :sort_order

      t.timestamps
      t.datetime :deleted_at
    end

    add_index :spree_slides, [:heroable_id, :heroable_type]
  end
end