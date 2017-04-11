class TodaysBaseball::Game
  attr_accessor :time, :home_roster, :home_team_name, :visitor_team_name, :visitor_roster, :score, :status

  @@all = []

  def initialize
    @time = "1:05"
    @home_roster = []
    @home_team_name = "Phillies"
    @visitor_roster = []
    @visitor_team_name = "Mets"
    @score = "3 to 4"
    @status = "Final"
  end

  def save
    self.all << self
  end

  def self.games
    @@all
  end
end