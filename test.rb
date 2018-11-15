require_relative "controller"
require_relative "repository"

repo = Cookbook.new
con = Controller.new(repo)

rec1 = Recipe.new("eggs","whooah!")
rec2 = Recipe.new("beans","mmmmmh!")
repo.add_recipe(rec1)
repo.add_recipe(rec2)
#con.create
#name?
#description?


puts con.list
