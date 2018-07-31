class HackerNews::CLI

#FEATURE REQUESTS:
#Spinner-tty to show scraping progress during initial scrape
#Add urls to jobs listing

    def start
        puts "========================================".colorize(:red)
        puts ColorizedString["Welcome to the Hacker News CLI"].colorize(:blue)
        puts ""
        puts ColorizedString["This CLI scrapes the Hacker News Website for news headlines and job postings."].colorize(:blue)
        puts ""
        HackerNews::Scraper.scrape_news
        HackerNews::Scraper.scrape_jobs
        #binding.pry

        # call main_menu method
        main_menu
    end  

    def main_menu
        puts ColorizedString["Please type 'news' for a list of news headlines."].colorize(:blue) 
        puts ColorizedString["Type 'jobs' to show available jobs."].colorize(:blue) 
        puts ColorizedString["Type 'exit' to exit the program."].colorize(:blue) 
        puts "========================================".colorize(:red)

        
        input = nil
        until input == "exit"
            input = gets.strip
            case input.downcase #Input is NOT case sensitive
            when "news"
                puts "========================================".colorize(:red)
                puts "This shows a list of news headlines: "
                HackerNews::Article.list_news 
                #do I need to pass the "type" i.e. news or jobs?
            when "jobs"
                puts "========================================".colorize(:red)
                puts "Here is a list of available jobs: "
                HackerNews::Jobs.list_jobs
            when "exit"
                puts puts "========================================".colorize(:red)
                puts "Have a great day!"
                puts ""
                puts ""
                exit
            #Need to figure out how to implement invalid input behavior:
            # when input != "exit" || "news" || "jobs"
            #         puts "Does not compute. Valid input required."
            else
                puts ""
                puts ColorizedString["++DOES NOT COMPUTE. VALID INPUT REQUIRED++"].colorize(:red)
            end
            puts ""
            puts "========================================".colorize(:red)
            main_menu
        end
        
        puts "========================================".colorize(:red)
        #main_menu
        # Input to index minus 1 so user input corresponds to proper array index
        #index = input.to_i -1 
        
        #article = HackerNews::Article.all[index]
        
        # Put this in a new method
        # This will prevent needing to scrape again if more than one selection is made.
        
        # if !article.description || !article.title
        #     HackerNews::Scraper.scrape_article_description
        # end
        
        # puts article.title
        # puts article.description
        
        
        #add an exit option
        #add behavior for invalid input
    end
end

#Show the list of scraped articles
# Iterate over scraped articles array
# DEBUG: cli.rb:26:in `main_menu': undefined local variable or method `articles'
#articles = Nokogiri::HTML(open(BASE_URL))
#HackerNews::Articles.all.each.with_index do |article, index| # Could also do each.with_index(1?)[1?]
    #articles.css('.title a')
    
    #puts "#{index + 1}. #{article.title}"
#end

#articles = HackerNews::Article.all

#puts "Please select an article to read more: "

#articles = HackerNews::Article.all