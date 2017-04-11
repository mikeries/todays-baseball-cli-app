class TodaysBaseball::Game
  attr_accessor :time, :home_team, :visitor_team, :score, :status, :gameid

  @@all = []

  def initialize
    self
  end

  def save
    @@all << self
  end

  def self.games
    if @@all.count==0
      load_games
    end
    @@all
  end

  def self.load_games
    game1 = TodaysBaseball::Game.new
    game1.time = "1:05"
    game1.home_team = TodaysBaseball::Team.new("Phillies")
    game1.visitor_team = TodaysBaseball::Team.new("Mets")
    game1.score = "3 to 4"
    game1.status = "Final"
    game1.save

    game2 = TodaysBaseball::Game.new
    game2.time = "2:05"
    game2.home_team = TodaysBaseball::Team.new("Cubs")
    game2.visitor_team = TodaysBaseball::Team.new("Cardinals")
    game2.score = "2 to 0"
    game2.status = "Top of the 4th"
    game2.save
  end

  def self.load_game_details(selection)
    game = self.games[selection]
    game.home_team.pitcher=TodaysBaseball::Pitcher.new("Jake Arrieta, LHP #50")
    game.home_team.pitcher.record="1 - 0"
    game.home_team.pitcher.era="3.2"
    game.home_team.pitcher.strikeouts="9 K"    

    game.visitor_team.pitcher=TodaysBaseball::Pitcher.new("Lance Lynn, RHP #31")
    game.visitor_team.pitcher.record="0 - 0"
    game.visitor_team.pitcher.era="3.38"
    game.visitor_team.pitcher.strikeouts="4 K"

    
    
  end
end