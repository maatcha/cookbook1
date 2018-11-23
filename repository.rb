require_relative "recipe"
require "csv"

class Repository

	def initialize
		@recipe_index = 0
		@csv_file = "data.csv"
		@csv_options = { col_sep: ",", force_quotes: false, headers: :first_row, quote_char: "|" }
	end

	def add_recipe(recipe)
		

		@recipe_index +=1
		csv_init = CSV.read(@csv_file)

		CSV.open(@csv_file, "a+", @csv_options) do |csv|
			if csv_init.empty?
				csv << ["index", "name", "description"]
			end

			csv << [@recipe_index, recipe.name, recipe.description]
			end
	end

	def remove_recipe(index)
		
		table = CSV.table(@csv_file, @csv_options)
		
		table.delete_if do |row|
			row[0] == index
		end
		
		File.open(@csv_file, "w", @csv_options) do |f|
			f.write(table.to_csv)
		end

	# 	table.each do |row|
	# 		until row[0].is_a? Integer
	# 			row[0].capitalize
	# 			row[1].capitalize
	# 			row[2].capitalize
	# 		end
	# 	p row[0..2]
	# end

	end
end 