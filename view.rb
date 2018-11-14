class View
	
	def display(recipes)
		recipes.each_with_index do |index|
			puts "#{index + 1} - #{recipe.description}"
		end
	end	

	def ask_user_for_description
		puts "What d'you wanna do ?"
		gets.chomp	
	end

	def ask_user_for_index
		puts "Index?"
		gets.chomp.to_i - 1
	end
end