class Router
	
	def initialize(controller)
		@controller = controller
	end

	def run
		loop do
			print_actions
			action = gets.chomp.to_i
			dispatch(action)
		end
	end

	def csv_initialize
		csv_options = { col_sep: ", ", force_quotes: false, quote_char: '"', headers: :first_row }
			CSV.open("data.csv", "ab", csv_options) do |csv|
			csv << ["Name", "Description"]
			end
	end

	private

	def print_actions
		puts "\n---"
		puts "What do you want to do ?"
		puts "1 - List recipes"
		puts "2 - Add a new recipe"
		puts "3 - Delete a recipe"
		puts "---"
	end

	def dispatch(action)
		case action
		when 1 then @controller.list
		when 2 then @controller.create
		when 3 then @controller.destroy
		else
			puts "Wrong action, please type 1, 2 or 3 !"
		end
	end
end