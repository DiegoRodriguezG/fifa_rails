require "fifa_rails/version"
require "rest-client"
require "pry"

module FifaRails
  class Fifa
	  def self.find_by_skill(opt)
	  	resp = RestClient.get "http://tools.fifaguide.com/api/topten/#{opt}"
	  	players = JSON.parse(resp)
	  	players
  	end

  	def self.find_by_name(arg)
  		arg = arg.downcase
  		resp = RestClient.get "http://cdn.content.easports.com/fifa/fltOnlineAssets/8D941B48-51BB-4B87-960A-06A61A62EBC0/2015/fut/items/web/players.json"
  		all_players = JSON.parse(resp)["Players"]

  		result = []

  		all_players.each do |player|
  			name = "#{player['f']} #{player['l']}".downcase

  			if name.include? arg
  				result << player
  			end
  		end

  		result
  	end
  end
end