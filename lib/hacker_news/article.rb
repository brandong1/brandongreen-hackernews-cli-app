class HackerNews::Article

    attr_accessor :title, :description, :url, :type

    @@all = []

    def initialize(title, url)
        @type = type 
        @title = title
        @url = url 
        @description = description 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.list_news
        list =[]
        self.all.each do |news, url|
            list << news.title
            list << news.url
        end
        list.each do |news_headline|
            puts "#{news_headline}" 
            puts ""
        end       
    end   
end
