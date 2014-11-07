class CreateCategoriesProductsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :categories, :products do |t|
      t.index [:category_id, :product_id], unique: true
    end
  end
end
