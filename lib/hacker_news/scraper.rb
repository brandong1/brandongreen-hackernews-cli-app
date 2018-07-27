class HackerNews::Scraper

    BASE_URL = "https://news.ycombinator.com/" # does this need to be in quotes?

    def self.scrape_news
        doc = Nokogiri::HTML(open(BASE_URL))

        #Iterate over each article
        doc.css('.title').each do |article_doc|
            title = article_doc.css('a')attribute('href').value

            #Create new instance of Article
            HackerNews::Article.new(title, url)
        end
end
