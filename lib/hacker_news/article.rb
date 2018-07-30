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

    def self.create
        # code
    end

    
end
