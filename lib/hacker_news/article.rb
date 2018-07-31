class HackerNews::Article

    attr_accessor :title, :description, :url, :type

    @@all = []

    def initialize(title, url)
        @type = type #Listing type as a possible add-on for the type of article I'm scraping
        @title = title
        @url = url # Listing url as a possible add-on to display the articles url. This links to a different site.
        @description = description #Listing description as a possible add-on for displaying the first paragraph of the article. This will be tough because each article links to a different site.
        @@all << self
    end

    def self.all
        @@all
    end

    #Should this method be in Scraper?
    def self.list_news
        list =[]
        self.all.each do |news|
            list << news.title
        end
        list.each do |news_headline|
            puts news_headline
            puts ""
        end       
    end   
end
