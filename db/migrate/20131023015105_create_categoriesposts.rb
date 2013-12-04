class CreateCategoriesposts < ActiveRecord::Migration
  def change
    create_table :categoriesposts do |t|
      t.integer :category_id
      t.integer :post_id

      t.timestamps
    end
  end
end
