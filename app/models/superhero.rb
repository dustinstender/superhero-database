require "json"
require "open-uri"

class Superhero < ApplicationRecord
  def self.search_hero(name)
    url = "https://www.superheroapi.com/api.php/5227955543889309/search/#{name}"
    user_serialized = URI.open(url).read
    hero = JSON.parse(user_serialized)
    superhero = Superhero.new(
      name: hero['results'][0]['name'],
      intelligence: hero['results'][0]['powerstats']['intelligence']
    )
    return superhero
  end
end
