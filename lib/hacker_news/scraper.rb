class HackerNews::Scraper

    BASE_URL = "https://news.ycombinator.com/newest" # does this need to be in quotes?

    BASE_URL_JOBS = "https://news.ycombinator.com/jobs"
    
    def self.scrape_news
        doc = Nokogiri::HTML(open(BASE_URL))
        #binding.pry
        # articles = doc.css('.title a.storylink').text.strip
        doc.css('.title a.storylink').each do |article_title|
            title = article_title.text 
            url = article_title.attribute('href').value
            HackerNews::Article.new(title, url)
            #binding.pry

        end
    end

    def self.scrape_jobs
        doc = Nokogiri::HTML(open(BASE_URL_JOBS))
        doc.css('.title a.storylink').each do |job|
            title = job.text 
            url = job.attribute('href').value
            HackerNews::Jobs.new(title, url)
            #binding.pry
            #HackerNews::Jobs.new(description)
        end
    end
end

#title = articles.css('.title a.storylink').text #DEBUG: Does it need to be title = article_doc.css('.title a').text.strip

# #Iterate over each article

# doc.css('.title').each do |article_doc|
#     url = article_doc.css('a').attribute('href').value
    #binding.pry
    #Create new instance of Article
    #HackerNews::Article.new(title, url)
    #binding.pry
#end

# def self.scrape_article_description(article)
#     url = article.url
#     doc = Nokogiri::HTML(open(BASE_URL))

#     #Scrape the article text
#     article.description = doc.css('div.dateline') #DEBUG: div.class? or span class="descriptor"
# end