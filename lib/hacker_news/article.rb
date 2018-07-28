class HackerNews::Article

    attr_accessor :title, :description, :url

    @@all = []

    def initialize(title, url)
        @title = title
        @url = url
        @description= description
        @@all << self
    end

    def self.all
        @@all
    end

    def self.create
        
    end

    
end
