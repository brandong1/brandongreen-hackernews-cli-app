class HackerNews::Jobs

    attr_accessor :title, :url

    @@all = []

    def initialize(title, url)
        @title = title
        @url = url 
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.list_data(data)
    #     data_list =[]
    #     data.each do |item|
    #         data_list << item[0] #jobs.job_headline
    #         data_list << item[1] #url
    #     end
    #     data_list.each do |headline|
    #         puts "#{headline}"
    #         puts ""
    #     end        
    # end

    
end