require "csv"

class Repository
	
	def initialize
		@recipes = []
	end

	def all
		filepath = "data.csv"
		csv_options = { col_sep: ", ", force_quotes: false, quote_char: '"', headers: :first_row }
		CSV.foreach(filepath, csv_options) do |row|
			puts "#{row["Name"]} : #{row["Description"]}"
		end
	end

	def add_recipe(recipe)
			csv_options = { col_sep: " : ", force_quotes: false, quote_char: '"', headers: :first_row }
			CSV.open("data.csv", "ab", csv_options) do |csv|
			csv << [recipe.name, recipe.description]
			end
	end

	def remove_recipe(index)
		@recipes.delete_at(index)
	end
end 