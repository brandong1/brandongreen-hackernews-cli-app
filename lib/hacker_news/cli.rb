class HackerNews::CLI

#FEATURE REQUESTS:
#Spinner-tty to show scraping progress during initial scrape


    def start
        puts "========================================".colorize(:red)
        puts ColorizedString["Welcome to the Hacker News CLI"].colorize(:blue)
        puts ""
        puts ColorizedString["This CLI scrapes the Hacker News Website for news headlines and job postings."].colorize(:blue)
        puts ""
        HackerNews::Scraper.scrape_news
        HackerNews::Scraper.scrape_jobs
        
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
            case input.downcase 
            when "news"
                puts "========================================".colorize(:red)
                puts "This shows a list of news headlines: "
                HackerNews::Article.list_news 
                
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
            else
                puts ""
                puts ColorizedString["++DOES NOT COMPUTE. VALID INPUT REQUIRED++"].colorize(:red)
            end
            puts ""
            puts "========================================".colorize(:red)
            main_menu
        end
        
        puts "========================================".colorize(:red)
        