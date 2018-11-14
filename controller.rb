require_relative "recipe"
require_relative "view"

class Controller
	
	def initialize(cookbook)
	@cookbook = cookbook
	@view = View.new
	end

	def list
		display_recipes
	end

	def create
		description = @view.ask_user_for_description
		recipe = recipe.new
		@cookbook.add_recipe(recipe)
	end

	def destroy
		display_recipes
		index = @view.ask_user_for_index
		@cookbook.remove(index)
	end

	private

	def display_recipes
		recipes = @cookbook.all
		@view.display(recipes)
	end
end