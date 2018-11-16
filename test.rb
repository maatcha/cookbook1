require "pry"
require_relative "controller"
require_relative "repository"

csv_options = { col_sep: ", ", force_quotes: false, quote_char: '"', headers: :first_row }
			CSV.open("data.csv", "ab", csv_options) do |csv|
			csv << ["Name", "Description"]
			end
			
repo = Repository.new
con = Controller.new(repo)

rec1 = Recipe.new("eggs","whooah!")
rec2 = Recipe.new("beans","mmmmmh!")
repo.add_recipe(rec1)
repo.add_recipe(rec2)
#con.create
#name?
#description?

puts con.list
