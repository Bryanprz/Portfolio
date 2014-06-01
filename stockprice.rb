#Give me the power to grab HTML from a page
require 'httparty'

#Give me the power to shape HTML with my Ruby prowess
require 'nokogiri'

#Let's scrape the price of my favorite car company.
class Tesla

attr_reader :bendable_html, :unbendable_html, :tesla_span

	def initialize
		grab_html
		bend_html 
		grab_span
		grab_price
	end


	#Let's get some HTML from this specific page.
	def grab_html
		@unbendable_html = HTTParty.get('http://finance.yahoo.com/q?s=TSLA')
	end

	#My Nokogiri power will turn unbendable HTML into 
	#something I can bend with Ruby.
	def bend_html
		@bendable_html = Nokogiri::HTML(@unbendable_html.body)
	end

	#I will tell @bendable_html that I don't want the entire
	#page. Just a special little part. Just the Tesla span.
	def grab_span
		@tesla_span = @bendable_html.xpath("//span[@id='yfs_l84_tsla']").first
	end

	#Now I have the span of HTML that contains my Tesla ticker.
	#I don't want all the HTML. I just want the ticker price. 
	#I'll use my content() pliers to pull it out. 
	def grab_price
		tesla_price = "$" + @tesla_span.content
		puts "The greatest car company in the world has a stock price of "
		puts tesla_price
		
		if tesla_price.to_i < 400
			puts "What a deal!"
		else 
			puts "Save up and support Elon."
		end
	end

end


#Your turn.

class StockPrice

	def initialize
		get_symbol
		get_url
		grab_html
		get_span
		price
	end

	#Get user input
	def get_symbol
		puts "What stock price do you want to look up?"
		@symbol = gets.chomp
		@big_symbol = @symbol.upcase
		@lil_symbol = @symbol.downcase
	end


	#Use user input to get URL
	def get_url
		@url = "http://finance.yahoo.com/q?s=#{@big_symbol}"
	end


	#Get raw HTML from URL. Use Nokogiri powers to beat HTML soft.
	def grab_html
		@raw_html = HTTParty.get(@url)
		@soft_html = Nokogiri::HTML(@raw_html.body)
	end


	#Use Xpath to extract just the nice parts.	
	def get_span
		@stock_span = @soft_html.xpath("//span[@id='yfs_l84_#{@lil_symbol}']").first
	end
		

	def price
		stock_price = @stock_span.content
		puts "That company is valued at $#{stock_price}."
	end
		
end


Tesla.new
StockPrice.new


#Next steps are to turn this into just one class that can take arguments,
#and create an instance with Tesla as the argument.

#Also need to be able to handle user input errors, e.g. if user inputs a non-stock symbol.

