class TodaysBaseball::CLI
  def start
    list_games
    get_input
  end

  def list_games
    puts "Today's Baseball Games"
    puts "----------------------"
    puts "1. Mets @ Phillies, 3 to 4, Final"
    puts "2. Carinals @ Cubs, 2 to 0, Top of the 4th"
    puts "3. Reds @ Pirates, 2:05 ET"
    puts "4. Astros @ Seahawks, Delayed"
    puts ""
  end

  def get_input
    puts "Please enter a number for more information on that game,"
    puts "type 'list' to redraw the list, or 'exit' to quit."
    while (input = gets.strip) != "exit" do
      if input == 'list'
        list_games
      elsif input.to_i>0
        show_game_details
      else
        puts "I don't recognize that command.  Please try again."
      end
    end
  end
end
