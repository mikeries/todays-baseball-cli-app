class TodaysBaseball::Player
  attr_accessor :name, :batting_order, :field_position, :avg, :home_runs,
                :rbis, :stolen_bases

  def initialize(name)
    @name = name
  end
end
