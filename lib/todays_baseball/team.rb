class TodaysBaseball::Team
  attr_accessor :name, :pitcher, :roster

  @roster = []

  def initialize(name)
    @name = name;
  end
end
      