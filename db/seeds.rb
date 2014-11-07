# Want a a bunch of data to use on your own ActiveRecord experiments? Run `rake db:seed` to insert
# the canned test data specified in this file into the db. You could also edit this file just to contain the
# test data you want.

@model_classes = [Category, Product]

def delete_all
  @model_classes.each do |model_class|
    puts "Deleting existing data for #{model_class}"
    model_class.delete_all
  end
end

delete_all

num_categories = 5
num_products = num_categories * 5

categories = []

num_categories.times do
  categories << Category.create!(name: Faker::Commerce.department)
end

num_products.times do
  random_category = categories.sample
  random_category.products.create!(name: Faker::Commerce.product_name)
end

@model_classes.each do |model_class|
  puts "Created #{model_class.count} records for #{model_class}"
end