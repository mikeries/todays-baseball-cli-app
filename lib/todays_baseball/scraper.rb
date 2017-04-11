require 'open-uri'

class TodaysBaseball::Scraper
  def self.scrape_games
    doc = Nokogiri::HTML(open('https://www.mlb.com/'))
  end
end