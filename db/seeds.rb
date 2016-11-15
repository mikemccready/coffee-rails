# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CoffeeMaker.create(product_type: 'COFFEE_MACHINE_SMALL', water_line_compatible: false, sku: 'CM001')
CoffeeMaker.create(product_type: 'COFFEE_MACHINE_SMALL', water_line_compatible: false, sku: 'CM002')
CoffeeMaker.create(product_type: 'COFFEE_MACHINE_SMALL', water_line_compatible: true, sku: 'CM003')
CoffeeMaker.create(product_type: 'COFFEE_MACHINE_LARGE', water_line_compatible: false, sku: 'CM101')
CoffeeMaker.create(product_type: 'COFFEE_MACHINE_LARGE', water_line_compatible: true, sku: 'CM102')
CoffeeMaker.create(product_type: 'COFFEE_MACHINE_LARGE', water_line_compatible: true, sku: 'CM103')
CoffeeMaker.create(product_type: 'ESPRESSO_MACHINE', water_line_compatible: false, sku: 'EM001')
CoffeeMaker.create(product_type: 'ESPRESSO_MACHINE', water_line_compatible: false, sku: 'EM002')
CoffeeMaker.create(product_type: 'ESPRESSO_MACHINE', water_line_compatible: true, sku: 'EM003')
