# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 
CoffeeMaker.create(product_title: 'Small Coffee Machine', image_url: 'http://www.surlatable.com/images/customers/c1079/PRO-2433365/PRO-2433365_pdp/main_variation_Default_view_2_425x425.', product_type: 'COFFEE_MACHINE_SMALL', water_line_compatible: false, sku: 'CM001')
CoffeeMaker.create(product_title: 'Small Coffee Machine', image_url: 'http://www.surlatable.com/images/customers/c1079/PRO-2433365/PRO-2433365_pdp/main_variation_Default_view_2_425x425.', product_type: 'COFFEE_MACHINE_SMALL', water_line_compatible: false, sku: 'CM002')
CoffeeMaker.create(product_title: 'Small Coffee Machine', image_url: 'http://www.surlatable.com/images/customers/c1079/PRO-2433365/PRO-2433365_pdp/main_variation_Default_view_2_425x425.', product_type: 'COFFEE_MACHINE_SMALL', water_line_compatible: true, sku: 'CM003')
CoffeeMaker.create(product_title: 'Large Coffee Machine', image_url: 'https://images-na.ssl-images-amazon.com/images/I/618mBlzQh0L._SY450_.jpg', product_type: 'COFFEE_MACHINE_LARGE', water_line_compatible: false, sku: 'CM101')
CoffeeMaker.create(product_title: 'Large Coffee Machine', image_url: 'https://images-na.ssl-images-amazon.com/images/I/618mBlzQh0L._SY450_.jpg', product_type: 'COFFEE_MACHINE_LARGE', water_line_compatible: true, sku: 'CM102')
CoffeeMaker.create(product_title: 'Large Coffee Machine', image_url: 'https://images-na.ssl-images-amazon.com/images/I/618mBlzQh0L._SY450_.jpg', product_type: 'COFFEE_MACHINE_LARGE', water_line_compatible: true, sku: 'CM103')
CoffeeMaker.create(product_title: 'Espresso Machine', image_url: 'https://images-na.ssl-images-amazon.com/images/I/41nOAd8OJyL.jpg', product_type: 'ESPRESSO_MACHINE', water_line_compatible: false, sku: 'EM001')
CoffeeMaker.create(product_title: 'Espresso Machine', image_url: 'https://images-na.ssl-images-amazon.com/images/I/41nOAd8OJyL.jpg', product_type: 'ESPRESSO_MACHINE', water_line_compatible: false, sku: 'EM002')
CoffeeMaker.create(product_title: 'Espresso Machine', image_url: 'https://images-na.ssl-images-amazon.com/images/I/41nOAd8OJyL.jpg', product_type: 'ESPRESSO_MACHINE', water_line_compatible: true, sku: 'EM003')

CoffeePod.create(product_title: 'Vanilla Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_VANILLA', pack_size: 12, sku: 'CP001')
CoffeePod.create(product_title: 'Vanilla Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_VANILLA', pack_size: 36, sku: 'CP003')
CoffeePod.create(product_title: 'Caramel Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_CARAMEL', pack_size: 12, sku: 'CP011')
CoffeePod.create(product_title: 'Caramel Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_CARAMEL', pack_size: 36, sku: 'CP013')
CoffeePod.create(product_title: 'Pumpkin Spice Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_PSL', pack_size: 12, sku: 'CP021')
CoffeePod.create(product_title: 'Pumpkin Spice Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_PSL', pack_size: 36, sku: 'CP023')
CoffeePod.create(product_title: 'Mocha Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_MOCHA', pack_size: 12, sku: 'CP031')
CoffeePod.create(product_title: 'Mocha Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_MOCHA', pack_size: 36, sku: 'CP033')
CoffeePod.create(product_title: 'Hazelnut Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_HAZELNUT', pack_size: 12, sku: 'CP041')
CoffeePod.create(product_title: 'Hazelnut Coffee Pod (Small)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_SMALL', coffee_flavor: 'COFFEE_FLAVOR_HAZELNUT', pack_size: 36, sku: 'CP043')

CoffeePod.create(product_title: 'Vanilla Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_VANILLA', pack_size: 12, sku: 'CP101')
CoffeePod.create(product_title: 'Vanilla Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_VANILLA', pack_size: 36, sku: 'CP103')
CoffeePod.create(product_title: 'Caramel Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_CARAMEL', pack_size: 12, sku: 'CP111')
CoffeePod.create(product_title: 'Caramel Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_CARAMEL', pack_size: 36, sku: 'CP113')
CoffeePod.create(product_title: 'Pumpkin Spice Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_PSL', pack_size: 12, sku: 'CP121')
CoffeePod.create(product_title: 'Pumpkin Spice Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_PSL', pack_size: 36, sku: 'CP123')
CoffeePod.create(product_title: 'Mocha Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_MOCHA', pack_size: 12, sku: 'CP131')
CoffeePod.create(product_title: 'Mocha Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_MOCHA', pack_size: 36, sku: 'CP133')
CoffeePod.create(product_title: 'Hazelnut Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_HAZELNUT', pack_size: 12, sku: 'CP141')
CoffeePod.create(product_title: 'Hazelnut Coffee Pod (Large)', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'COFFEE_POD_LARGE', coffee_flavor: 'COFFEE_FLAVOR_HAZELNUT', pack_size: 36, sku: 'CP143')

CoffeePod.create(product_title: 'Vanilla Espresso Pod', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'ESPRESSO_POD', coffee_flavor: 'COFFEE_FLAVOR_VANILLA', pack_size: 36, sku: 'EP003')
CoffeePod.create(product_title: 'Vanilla Espresso Pod', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'ESPRESSO_POD', coffee_flavor: 'COFFEE_FLAVOR_VANILLA', pack_size: 60, sku: 'EP005')
CoffeePod.create(product_title: 'Vanilla Espresso Pod', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'ESPRESSO_POD', coffee_flavor: 'COFFEE_FLAVOR_VANILLA', pack_size: 84, sku: 'EP007')
CoffeePod.create(product_title: 'Caramel Espresso Pod', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'ESPRESSO_POD', coffee_flavor: 'COFFEE_FLAVOR_CARAMEL', pack_size: 36, sku: 'EP013')
CoffeePod.create(product_title: 'Caramel Espresso Pod', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'ESPRESSO_POD', coffee_flavor: 'COFFEE_FLAVOR_CARAMEL', pack_size: 60, sku: 'EP015')
CoffeePod.create(product_title: 'Caramel Espresso Pod', image_url: 'http://s7d4.scene7.com/is/image/keurig/Our-Blend-Coffee-K-Cup-Green-Mountain_en_pdp?$pdp_general$', product_type: 'ESPRESSO_POD', coffee_flavor: 'COFFEE_FLAVOR_CARAMEL', pack_size: 84, sku: 'EP017')










