class Show < ActiveRecord::Base 
  def self.highest_rating
    maximum(:rating)
  end
  def self.most_popular_show 
    title.maximum(:rating)
  end
  def self.lowest_rating
    minimum(:rating)
  end
  def self.least_popular_show 
    
  end
  def self.popular_shows 
    Show.where("rating" > 5).count 
  end
end