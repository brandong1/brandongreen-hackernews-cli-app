class HackerNews::Helpers
    
    def self.list_data(data)
        #binding.pry
        data_list =[]
        data.each do |item|
            data_list << item.title #jobs.job_headline
            data_list << item.url
        end
        data_list.each do |headline|
            puts "#{headline}"
            puts ""
        end        
    end

end
