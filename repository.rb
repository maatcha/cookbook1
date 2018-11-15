require "csv"

class Cookbook
	
	def initialize
		@recipes = []
	end

	def all
		@recipes

	end

	def add_recipe(recipe)
			@recipes << recipe
			csv_options = { col_sep: ",", force_quotes: true, quote_char: "'" }
			CSV.open("data.csv", "w") do |csv|
			csv << @recipes
			end
	end

	def remove_recipe(index)
		@recipes.delete_at(index)
	end
end 