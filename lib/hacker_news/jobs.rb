class HackerNews::Jobs

    attr_accessor :job_headline #:url

    @@all = []

    def initialize(job_headline)
        @job_headline = job_headline
        #@url = url #Listing url as a possible add on
        @@all << self
    end

    def self.all
        @@all
    end

    def self.list_jobs
        job_list =[]
        self.all.each do |jobs|
            job_list << jobs.job_headline\
        end
        job_list.each do |jobs_headline|
            puts jobs_headline
            puts ""
            binding.pry
        end        
    end
end