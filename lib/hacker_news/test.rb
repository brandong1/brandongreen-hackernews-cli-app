# create executable in bin
bin/hacker_news
#!usr/local/bin ruby

require_relative '../lib/hacker_news

HackerNews::CLI.new.start






#environment file
hacker_news.rb

# change line 1 to:
require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative "./hacker_news/version"
require_relative "./hacker_news/cli"
require_relative "./hacker_news/article"

# name space all the things HackerNews::<Classes>
#####
cli.rb

class HackerNews::CLI
# Feature Request
# Add Spinner-tty when CLI is ran

def start
	puts "Welcome to Hacker News CLI"
	puts ""
	
	HackerNewsScraper.scrape_news
	
	# call main_menu method
	main_menu
	
end

def main_menu
	puts "Here's a list of current articles you can read: "
	puts ""
	
	# Show list of scraped articles
	articles = HackerNews::Article.all 
		
	# I want my list to be numbered
	articles.each_with_index do |article, index| # Could also do each.with_index(1) to avoid having to put +1 in interpolation below
		puts "#{index + 1}. #{article.title}"
	end
	
	puts ""
	puts " Please select an article title to read more: "
	
	input = gets.stip
	index = input.to_i -1 # converting input to an integer and minus 1
	
	article = HackerNews::Article.all[index]
	
	# put this in a new method
	# this will prevent needing to scrape again if anothe
	if !article.description || !article.title
		HackerNews::Scraper.scrape_article_description
	end
	
	
	puts article.title
	puts article.description
	
	main_menu
	
	#add exit option
	#add behavior for invalid input
end

#####
create lib/scraper.rb

class Scraper

BASE_URL = https://news.ycombinator.com/

	def self.scrape_news
		doc = Nokogiri::HTML(open(BASE_URL))
	
		# iterate over each article
		doc.css('.<css tag>').each do |article_doc|
			title = article_doc.css('.<css tag>').text.strip
			url = article_doc.css('.<css tag>').attribute('<href>').value
			# binding.pry
			
			# then create new instance of Article
			HackerNews::Article.new(title, url)			
		end
	
		#binding.pry
	end
	

	def self.scrape_article_description(article)
		url = article.url
		doc = Nokogiri::HTML(open(url))
		
		#scrape the article text
		article.description = doc.css('.<tag for article text>)
		
	end

#####END SCRAPER

# ARTICLE class

class HackerNews::Article
	attr_accessor :title, :description, :url

	@@all = []
	
	def initial(title, url)
	@title = title
	@url = url
	@@all << self
	end
	
	def self.all
		@@all
	end

end

# To check @@all array:
# HackerNews::Article.all