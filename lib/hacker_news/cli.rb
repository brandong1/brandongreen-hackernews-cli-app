class HackerNews::CLI

# Feature Request:
# Spinner-tty

    def start
        puts "Welcome to the Hacker News CLI"
        puts ""
        puts "This CLI scrapes the Hacker News Website"
        puts ""
        HackerNews::Scraper.scrape_news
        #binding.pry

        # call main_menu method
        self.main_menu
    end  

    def main_menu
        puts "Here's a list of current articles you can read: "
        puts ""

        #Show the list of scraped articles
        HackerNews::Article.all

        # Iterate over scraped articles array
        # DEBUG: cli.rb:26:in `main_menu': undefined local variable or method `articles'
        #articles = Nokogiri::HTML(open(BASE_URL))
        articles.css('.title a')
        articles.each_with_index do |article, index| # Could also do each.with_index(1?)[1?]
            puts "#{index + 1}. #{article.title}"
        end

        #articles = HackerNews::Article.all
 
        puts "Please select an article to read more: "
        
        #articles = HackerNews::Article.all

        input = nil
        until input == "exit"
            input = gets.strip
            case input
            when "1"
                puts "hi"
            when "exit"
                exit
            end
            
        end

        # Input to index minus 1 so user input corresponds to proper array index
        index = input.to_i -1 

        article = HackerNews::Article.all[index]

        # Put this in a new method
        # This will prevent needing to scrape again if more than one selection is made.

        if !article.description || !article.title
            HackerNews::Scraper.scrape_article_description
        end

        puts article.title
        puts article.description

        puts "============================="
        main_menu

        #add an exit option
        #add behavior for invalid input
    end
end
