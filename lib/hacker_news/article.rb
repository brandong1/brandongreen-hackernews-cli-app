class HackerNews::Article

    attr_accessor :title, :description, :url, :type

    @@all = []

    def initialize(title, url, type)
        @type = type
        @title = title
        @url = url
        @description= description
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


    # def self.create
    #     # code
    # end

    
end
