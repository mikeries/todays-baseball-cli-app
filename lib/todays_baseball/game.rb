class TodaysBaseball::Game
  attr_accessor :time, :home_roster, :home_team_name, :visitor_team_name, :visitor_roster, :score, :status

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
    game1.home_roster = []
    game1.home_team_name = "Phillies"
    game1.visitor_roster = []
    game1.visitor_team_name = "Mets"
    game1.score = "3 to 4"
    game1.status = "Final"
    game1.save

    game2 = TodaysBaseball::Game.new
    game2.time = "2:05"
    game2.home_roster = []
    game2.home_team_name = "Cubs"
    game2.visitor_roster = []
    game2.visitor_team_name = "Cardinals"
    game2.score = "2 to 0"
    game2.status = "Top of the 4th"
    game2.save
  end
end