class Movie < ActiveRecord::Base
    def self.rating
        Movie.select(:rating).distinct.inject([]) {|a,m| a.push m.rating}
    end
end