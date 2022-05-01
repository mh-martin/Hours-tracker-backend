# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Project.create(project_name: "Projekti 1", start_date: DateTime.new(2022, 1, 1), est_end_date: DateTime.new(2022, 2, 1), completed: false)
Project.create(project_name: "Projekti 2", start_date: DateTime.new(2022, 2, 1), est_end_date: DateTime.new(2022, 3, 1), completed: false)
Project.create(project_name: "Projekti 3", start_date: DateTime.new(2022, 3, 1), est_end_date: DateTime.new(2022, 4, 1), completed: true)

TrackedHour.create(person_name: "Matti Meikäläinen", hours: 7.5, classification: "Testaus", project_id: 1)
TrackedHour.create(person_name: "Matti Meikäläinen", hours: 1, classification: "Kokous", project_id: 2)
TrackedHour.create(person_name: "Matti Meikäläinen", hours: 6, classification: "Kehitys", project_id: 3)
TrackedHour.create(person_name: "Matti Meikäläinen", hours: 2, classification: "Kokous", project_id: 1)