require_relative "repository"
require_relative "controller"
require_relative "router"

repository = Cookbook.new
controller = Controller.new(repository)
router = Router.new(controller)
router.run