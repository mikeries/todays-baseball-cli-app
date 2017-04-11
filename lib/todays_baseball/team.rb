class TodaysBaseball::Team
  attr_accessor :name, :pitcher, :roster

  @roster = []

  def new(name)
    @name = name;
  end
end
      