require "iks_scrape/version"

require 'mechanize'
require 'date'
require 'pathname'

module IksScrape
	class Scraper
		HTTP_ENDPOINT = 'http://www.iks-kb.cz/web/fondy_denni_hodnoty.html'

		def scrape
			agent = Mechanize.new
			page = agent.get(HTTP_ENDPOINT)

			page.search("div#fundView tr").map do |tr|
				contents = tr.search("td").map(&:content).map(&:strip)
				next unless contents.size >= 3

				d = Date.parse(contents[1])

				stripped = contents[3].gsub(',','.').gsub(/[ ]/,'')
				price = stripped.to_f

				[
					contents[0],
					{ price: price, date: d }  # date: nil if unavailable
				]
			end.compact.to_h
		end
	end
end
