require_relative './app'
def main
  app = App.new
  puts 'Welcome to the Library App'
  app.load
  app.main_menu
end
main
