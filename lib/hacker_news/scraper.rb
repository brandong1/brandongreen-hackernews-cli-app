class HackerNews::Scraper

    BASE_URL = "https://news.ycombinator.com/newest" 

    BASE_URL_JOBS = "https://news.ycombinator.com/jobs"
    
    def self.scrape_news
        doc = Nokogiri::HTML(open(BASE_URL))
        doc.css('.title a.storylink').each do |article_title|
            title = article_title.text 
            url = article_title.attribute('href').value
            HackerNews::Article.new(title, url)
        end
    end

    def self.scrape_jobs
        doc = Nokogiri::HTML(open(BASE_URL_JOBS))
        doc.css('.title a.storylink').each do |job|
            title = job.text 
            url = job.attribute('href').value
            HackerNews::Jobs.new(title, url)
        end
    end
end

