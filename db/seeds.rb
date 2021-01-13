# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# PRODUCT
puts 'Cleaning database...'
Product.destroy_all
Category.destroy_all

puts 'Creating categories...'
epilation = Category.create!(name: 'epilation')
massage = Category.create!(name: 'massages')

puts 'Creating products...'
Product.create!(sku: 'massage thai', name: 'massage thai', category: massage) 
Product.create!(sku: 'poil trop longs', name: 'polis trop longs', category: epilation)
Product.create!(sku: 'poil des pieds',   name: 'poils des pieds',      category: epilation)
Product.create!(sku: 'raoul',   name: 'le cri qui desaoule',      category: epilation)
puts 'Finished!'