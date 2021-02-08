# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# MarketPlace.create(user_id: 1, business_name: 'Tacos El Unico', address: 'Av. Sevilla del Rio 455', 
# district: 'Colima', postcode: 28970, business_line: 'Food', pickup_type: 'Servicio a domicilio', latitud: 19.254087, longitud: -103.714371,
# open_hour: '19:00', close_hour: '00:00', service_days: "Lunes - Domingo")

# MarketPlace.create(user_id: 1, business_name: 'Adobe Pizza', address: 'Calle Ignacio Sandoval 1652, Real Vista Hermosa', 
#     district: 'Colima', postcode: 28018, business_line: 'Food', pickup_type: 'Servicio a domicilio', latitud: 19.257611, longitud: -103.708072,
#     open_hour: '13:00', close_hour: '11:30', service_days: "Lunes - Domingo")

# User.create(name: 'Maria Rivera',email: 'maria@gmai.com', password: 'maria123')

MarketPlace.create(user_id: 2, business_name: 'Pozole Colima', address: 'Fco. Javier Mina 89, Centro', 
    district: 'Colima', postcode: 28050, business_line: 'Food', pickup_type: 'Para llevar', latitud: 19.246483, longitud: -103.734191,
    open_hour: '08:00', close_hour: '22:00', service_days: "Lunes - Domingo")