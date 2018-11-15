class View

	def display(recipes)
		recipes.each_with_index do |recipe, index|
			puts "#{index + 1} - #{recipe.description}"
		end
	end	

	def ask_user_for_name
		puts "Which name for your recipe ?"
		gets.chomp
	end

	def ask_user_for_description
		puts "What's the description of that recipe ?"
		gets.chomp
	end

	def ask_user_for_index
		puts "Index?"
		gets.chomp.to_i - 1
	end
end