class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      break if action == 99

      dispatch(action)
    end

    puts "Goodbye..."
  end

  private

  def print_actions
    puts '-' * 80
    puts "1. Create Meal"
    puts "2. List Meal"
    puts '-' * 80
    puts "3. Create Customer"
    puts "4. List Customer"
    puts '-' * 80
    puts 'Enter your action (99 to exit):'
    puts '-' * 80
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    end
  end
end
