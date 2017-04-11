class TodaysBaseball::CLI

  def start
    list_games
    get_input
  end

  def list_games
    puts "Today's Baseball Games"
    puts "----------------------"
    @games = TodaysBaseball::Game.games
    @games.each.with_index do |game, item|
      puts "#{item+1}. #{game.visitor_team.name} @ #{game.home_team.name}, #{game.score}, #{game.status}"
    end
  end

  def get_input
    puts "Please enter a number for more information on that game,"
    puts "type 'list' to redraw the list, or 'exit' to quit."
    while (input = gets.strip) != "exit" do
      if input == 'list'
        list_games
      elsif input.to_i>0
        show_game_details(input.to_i)
      else
        puts "I don't recognize that command.  Please try again."
      end
    end
  end

  def show_game_details(game_number)
    game = TodaysBaseball::Game.load_game_details(game_number-1)
    puts "Starting Pitchers"
    puts "#{game.visitor_team.name}: #{game.visitor_team.pitcher.name}, "+
         "#{game.visitor_team.pitcher.record}, #{game.visitor_team.pitcher.era}, "+
         "#{game.visitor_team.pitcher.strikeouts}"
    puts "#{game.home_team.name}: #{game.home_team.pitcher.name}, "+
         "#{game.home_team.pitcher.record}, #{game.home_team.pitcher.era}, "+
         "#{game.home_team.pitcher.strikeouts}"
    puts ""

    puts "#{game.visitor_team.name} Lineup"
    puts "    Batter                       AVG     HR     RBI    SB"
    game.visitor_team.roster.each do |player|
      puts "#{player.batting_order}. #{player.name}, #{player.field_position}, "+
           "#{player.avg} #{player.home_runs} #{player.rbis}  #{player.stolen_bases}"
    end

    puts "#{game.home_team.name} Lineup"
    puts "    Batter                       AVG     HR     RBI    SB"
    game.home_team.roster.each do |player|
      puts "#{player.batting_order}. #{player.name}, #{player.field_position}, "+
           "#{player.avg} #{player.home_runs} #{player.rbis}  #{player.stolen_bases}"
    end
    
  end
end
