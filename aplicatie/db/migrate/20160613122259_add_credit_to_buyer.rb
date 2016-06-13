class AddCreditToBuyer < ActiveRecord::Migration
  def change
    add_column :buyers, :credit, :int
  end
end
