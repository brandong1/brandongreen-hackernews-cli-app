class HackerNews::CLI

# Feature Request:
# Spinner-tty

    def start
        puts "Welcome to the Hacker News CLI"
        puts ""
        puts "This CLI scrapes the Hacker News Website"
        
        HackerNews.Scraper.scrape_news

        # call main_menu method
        main_menu
        
    end  

    def main_menu
        puts "Here's a list of current articles you can read: "
        puts ""

        #Show the list of scraped articles
        articles = HackerNews::Article.all

        # Iterate over scraped articles array
        articles.each_with_index do |article, index| # Could also do each.with_index(1?)[1?]
            puts "#{index + 1}." #{article.title}"
        end

        puts ""
        puts "Please select an article to read more: "

        input = gets.strip



end
