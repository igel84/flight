#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Airport.destroy_all
#City.destroy_all
#Nation.destroy_all

nation1 = Nation.create(name: 'Вашингтон')
nation2 = Nation.create(name: 'Нью-Йорк')
city1 = City.create(name: 'Одесса', nation_id: nation1.id)
city2 = City.create(name: 'Одесса', nation_id: nation2.id)
Airport.create(name: 'Ласточка', city_id: city1.id)
Airport.create(name: 'Скорость', city_id: city2.id)