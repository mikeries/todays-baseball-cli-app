class TodaysBaseball::Player
  attr_accessor :name, :batting_order, :field_position, :avg, :home_runs,
                :RBIs, :stolen_bases

  def initialize(name)
    @name = name
  end
end
