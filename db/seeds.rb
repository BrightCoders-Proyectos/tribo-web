# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MarketPlace.create(user_id: 1, business_name: 'Tacos El Unico', address: 'Av. Sevilla del Rio 455', 
district: 'Colima', postcode: 28970, business_line: 'Food', pickup_type: 'Servicio a domicilio', latitud: 19.254087, longitud: -103.714371,
open_hour: '19:00', close_hour: '00:00', service_days: "Lunes - Domingo")