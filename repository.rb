class Cookbook
	
	def initialize(data)
		load_csv
		@recipes = []
	end

	def load_csv
		@next_id = @recipes.empty? ? 1 : @recipes.last.id + 1
	end

	def all
		@recipes
	end

	def add_recipe(recipe)
		recipe.id = @next_id
		@next_id += 1
		@recipes << recipe
		save_csv
	end

	def remove_recipe(index)
		@recipes.delete_at(index)
	end
end 