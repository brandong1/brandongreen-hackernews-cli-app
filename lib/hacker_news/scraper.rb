class HackerNews::Scraper

    BASE_URL = "https://news.ycombinator.com" # does this need to be in quotes?

    
    def self.scrape_news
        doc = Nokogiri::HTML(open(BASE_URL))
        #binding.pry
        articles = doc.css('.title a.storylink').text.strip
        binding.pry
             title = article_doc.css('.title a.storylink').text #DEBUG: Does it need to be title = article_doc.css('.title a').text.strip

        # #Iterate over each article

        # doc.css('.title').each do |article_doc|
        #     url = article_doc.css('a').attribute('href').value
            #binding.pry
            #Create new instance of Article
            #HackerNews::Article.new(title, url)
            #binding.pry
        #end
    end

    def self.scrape_article_description(article)
        url = article.url
        doc = Nokogiri::HTML(open(BASE_URL))

        #Scrape the article text
        article.description = doc.css('div.dateline') #DEBUG: div.class? or span class="descriptor"
    end
    
end
