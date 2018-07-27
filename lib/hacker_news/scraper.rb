class HackerNews::Scraper

    BASE_URL = "https://news.ycombinator.com/" # does this need to be in quotes?

    def self.scrape_news
        doc = Nokogiri::HTML(open(BASE_URL))

        #Iterate over each article
        doc.css('.title').each do |article_doc|
            title = article_doc.css('.title').text.strip #DEBUG: Does it need to be title = article_doc.css('.title a').text.strip
            url = article_doc.css('a').attribute('href').value
            #Create new instance of Article
            HackerNews::Article.new(title, url)
        end

    def self.scrape_article_description(article)
        url = article.url
        doc = Nokogiri::HTML(open(BASE_URL))

        #Scrape the article text
        article.description = doc.css('div.dateline') #DEBUG: div.class? or span class="descriptor"
    end
    
end
