class TodaysBaseball::Pitcher
  attr_accessor :name, :record, :era, :strikeouts

  def initialize(name)
    @name = name
  end
end
