class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :quantity
      t.string :price
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
