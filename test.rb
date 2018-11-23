require "pry"
require_relative "controller"
require_relative "repository"

repo = Repository.new
con = Controller.new(repo)

rec1 = Recipe.new("eggs","whooah!")
rec2 = Recipe.new("beans","mmmh d'accord!")
repo.add_recipe(rec1)
repo.add_recipe(rec2)

repo.remove_recipe(1)

puts con.list
