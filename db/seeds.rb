# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: 'dev@admin.com', first_name: 'Admin', last_name: 'Dev', password: 'holahola')
Client.create(email: 'luke@jedi.com', first_name: 'Luke', last_name: 'Skywalker', rating: 5.0, password: 'holahola')
Driver.create(first_name: 'Rayo', last_name: 'McQueen', email: 'rayo@mcqueen', password: 'holahola', rating: 5.0,
	location: 'Monterrey')
Car.create(model: 'Model S', license_plate: '40A-340-F3', brand: 'Tesla', color: 'Blanco', driver_id: 1)
Trip.create(origin: 'Tecnologico de Monterrey' , destiny: 'Central de autobuses Monterrey', datetime: DateTime.now,
 driver_id: nil, client_id: 1, rate: 123, duration: nil, status: "pending")
